//
//  WKWebView+JSBridge.h
//  JTSWebViewBridge
//
//  Created by jtans on 2018/5/10.
//  Copyright © 2018年 jtans. All rights reserved.
//

#import <WebKit/WebKit.h>
#import "JTSWebViewJSBridgeable.h"

@interface WKWebView (JSBridge)<JTSWebViewJSBridgeable>

@end
