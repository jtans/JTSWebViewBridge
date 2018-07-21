//
//  JTSWebViewJSBridgeable.h
//  JTSWebViewBridge
//
//  Created by jtans on 2018/5/10.
//  Copyright © 2018年 jtans. All rights reserved.
//

#import <Foundation/Foundation.h>
#if __has_include(<WebViewJavascriptBridge/WebViewJavascriptBridge.h>)
#else
#import "WebViewJavascriptBridge.h"
#endif

@protocol JTSWebViewJSBridgeable <NSObject>

- (WebViewJavascriptBridge *)bridge;

- (void)injectHandlers;

@end
