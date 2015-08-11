//
//  ShareTo.m
//  Editor
//
//  QQ OpenAPI:  http://open.qq.com/
//  Weixin API:  http://open.weixin.qq.com
//
//  Created by Snaill on 15/8/2.
//  Copyright (c) 2015年 Snaill. All rights reserved.
//

#import "ShareTo.h"
#import "QQActivity.h"
#import "QZoneActivity.h"
#import <WeixinActivity/WeixinActivity.h>

@implementation ShareTo

+ (void) registerApp {
    [WXApi registerApp:@"wx123a456789b0123c"];
    [QQApiActivity registerApp:@"222222"];
}

+ (BOOL) handleOpenURL:(NSURL *) url {
    
    if ([url.absoluteString hasPrefix:@"wx"]) {
        return [WXApi handleOpenURL:url delegate:nil];
    } else {
        return [QQApiInterface handleOpenURL:url delegate:nil];
    }
}

+ (NSArray *) activitys {
    return @[[WeixinSessionActivity new], [WeixinTimelineActivity new], [QQActivity new], [QZoneActivity new]];
}
@end
