//
//  JTSWebViewJSHandler.m
//  JTSWebViewBridge
//
//  Created by jtans on 2018/5/10.
//  Copyright © 2018年 jtans. All rights reserved.
//

#import "JTSWebViewJSHandler.h"

@implementation JTSWebViewJSHandlerParameter
@end

@implementation JTSWebViewJSHandler

- (id)jsonResult:(id)data {
    id result = data;
    if (data && [data isKindOfClass:[NSString class]]) {
        data = [data dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error;
        result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
        if (error) {
            NSLog(@"%s %@", __FUNCTION__, error);
        }
#if DEBUG
        NSLog(@"recv from js %s: %@", __FUNCTION__, result);
#endif
    }
    return result;
}

@end
