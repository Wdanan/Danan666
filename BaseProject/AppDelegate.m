//
//  AppDelegate.m
//  BaseProject
//
//  Created by jiyingxin on 15/10/21.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+Category.h"
//设置分享到QQ/Qzone的应用Id，和分享url 链接
#import "UMSocialQQHandler.h"
#import "UMSocial.h"
@interface AppDelegate ()

@end
/*
 QQ应用
 APP ID:1104539912
 APP KEY:eFVgRits2fqf36Jf
 
 友盟:5632e64767e58eb4c3004d87
 */
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initializeWithApplication:application];
    [UMSocialData setAppKey:@"5632e64767e58eb4c3004d87"];
    [UMSocialQQHandler setQQWithAppId:@"1104539912" appKey:@"eFVgRits2fqf36Jf" url:@"http://www.umeng.com/social"];


    return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return  [UMSocialSnsService handleOpenURL:url];
}
- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    return  [UMSocialSnsService handleOpenURL:url];
}

@end
