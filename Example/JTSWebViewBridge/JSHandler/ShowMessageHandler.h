//
//  ShowMessageHandler.h
//  ExampleApp-iOS
//
//  Created by tansheng on 2018/7/17.
//  Copyright © 2018年 Marcus Westin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JTSWebViewBridge/JTSWebViewJSHandler.h>

@interface ShowMessageHandler : JTSWebViewJSHandler

- (void)testObjcCallback:(JTSWebViewJSHandlerParameter *)param;

- (void)showMsg:(JTSWebViewJSHandlerParameter *)param;

@end
