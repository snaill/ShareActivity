//
//  ShareTo.h
//  Editor
//
//  Created by Snaill on 15/8/2.
//  Copyright (c) 2015年 Snaill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShareTo : NSObject

+ (void) registerApp;
+ (BOOL) handleOpenURL:(NSURL *) url;
+ (NSArray *) activitys;
@end
