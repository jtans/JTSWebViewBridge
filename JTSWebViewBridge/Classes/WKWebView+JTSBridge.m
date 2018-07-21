//
//  WKWebView+JSBridge.m
//  JTSWebViewBridge
//
//  Created by jtans on 2018/5/10.
//  Copyright © 2018年 jtans. All rights reserved.
//

#import "WKWebView+JTSBridge.h"
#import <objc/runtime.h>
#import "JTSWebViewJSHandler.h"

@implementation WKWebView (JSBridge)

- (WebViewJavascriptBridge *)bridge {
    id obj = objc_getAssociatedObject(self, @selector(bridge));
    if (obj) {
        return obj;
    }
#if DEBUG
    [WebViewJavascriptBridge enableLogging];
#endif
    WebViewJavascriptBridge *_bridge = [WebViewJavascriptBridge bridgeForWebView:self];
    [_bridge setWebViewDelegate:self];
    
    objc_setAssociatedObject(self, @selector(bridge), _bridge, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    return _bridge;
}

- (void)injectHandlers {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"wvbridge" ofType:@"plist"];
    NSAssert(path, @"wvbridge plist not found.");
    
    NSDictionary *handlers = [NSDictionary dictionaryWithContentsOfFile:path];
    NSAssert([handlers isKindOfClass:[NSDictionary class]], @"handlers must be kindof dictionary.");
    
    for (NSString *class in handlers) {
        Class cls = NSClassFromString(class);
        if(!cls) continue;
        
        JTSWebViewJSHandler *handler = [[cls alloc] init];
        handler.bridge = self.bridge;
        handler.webView = self;
        
        NSArray *methods = handlers[class];
        NSAssert([methods isKindOfClass:[NSArray class]], @"methods must be kindof array.");
        
        for (NSString *method in methods) {
            NSString *selector = [method stringByAppendingString:@":"];
            if (![handler respondsToSelector:NSSelectorFromString(selector)]) continue;
            
            [self.bridge registerHandler:method handler:^(id data, WVJBResponseCallback responseCallback) {
                JTSWebViewJSHandlerParameter *param = [[JTSWebViewJSHandlerParameter alloc] init];
                param.data = data;
                param.responseCallback = responseCallback;
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
                [handler performSelector:NSSelectorFromString(selector) withObject:param];
#pragma clang diagnostic pop
            }];
        }
    }
}

@end
