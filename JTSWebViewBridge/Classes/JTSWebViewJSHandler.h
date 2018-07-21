//
//  JTSWebViewJSHandler.h
//  JTSWebViewBridge
//
//  Created by jtans on 2018/5/10.
//  Copyright © 2018年 jtans. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JTSWebViewJSBridgeable.h"


@interface JTSWebViewJSHandlerParameter : NSObject
@property(nonatomic, strong) id data;
@property(nonatomic, copy) WVJBResponseCallback responseCallback;
@end

@interface JTSWebViewJSHandler : NSObject

/**
 所属webview
 */
@property(nonatomic, weak) id<JTSWebViewJSBridgeable> webView;

/**
 bridge
 */
@property(nonatomic, weak) WebViewJavascriptBridge *bridge;

/**
 json parse from jsonstring

 @param data jsonstring
 @return json oc obj
 */
- (id)jsonResult:(id)data;

@end
