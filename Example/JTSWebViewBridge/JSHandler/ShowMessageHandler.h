//
//  ShowMessageHandler.h
//  ExampleApp-iOS
//
//  Created by tansheng on 2018/7/17.
//  Copyright © 2018年 Marcus Westin. All rights reserved.
//

#import <Foundation/Foundation.h>
#if __has_include(<JTSWebViewBridge/JTSWebViewJSHandler.h>)
#else
#import "JTSWebViewJSHandler.h>"
#endif

@interface ShowMessageHandler : JTSWebViewJSHandler

- (void)testObjcCallback:(JTSWebViewJSHandlerParameter *)param;

- (void)showMsg:(PPWebViewJSHandlerParameter *)param;

@end
