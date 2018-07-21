//
//  ShowMessageHandler.m
//  ExampleApp-iOS
//
//  Created by tansheng on 2018/7/17.
//  Copyright © 2018年 Marcus Westin. All rights reserved.
//

#import "ShowMessageHandler.h"

@implementation ShowMessageHandler

- (void)testObjcCallback:(JTSWebViewJSHandlerParameter *)param {
    NSLog(@"recv data from js: %@", param.data);
    param.responseCallback(@{@"msg":@"iam from oc"});
}

- (void)showMsg:(PPWebViewJSHandlerParameter *)param {
    [[[UIAlertView alloc] initWithTitle:nil message:param.data delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil] show];
    param.responseCallback(@"啊哈哈");
}

@end
