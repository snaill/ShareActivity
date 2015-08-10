//
//  QZoneActivity.m
//  Sharepai
//
//  Created by Snaill on 15/7/13.
//  Copyright (c) 2015年 Snaill. All rights reserved.
//

#import "QZoneActivity.h"

@implementation QZoneActivity

- (void)prepareWithActivityItems:(NSArray *)activityItems
{
    self.shareType = kShareMsgToQQQZone;
    [super prepareWithActivityItems:activityItems];
}

@end
