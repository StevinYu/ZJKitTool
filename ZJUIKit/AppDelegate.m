//
//  AppDelegate.m
//  ZJUIKit
//
//  Created by dzj on 2017/12/1.
//  Copyright © 2017年 kapokcloud. All rights reserved.
//

#import "AppDelegate.h"
#import "ZJKitNaigationController.h"
#import "ZJMainViewController.h"
//#import "JPFPSStatus.h"
//#import "GDPerformanceMonitor.h"
#import "YYFPSLabel.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    
    
    ZJMainViewController *vc = [[ZJMainViewController alloc]init];
    ZJKitNaigationController *nav = [[ZJKitNaigationController alloc]initWithRootViewController:vc];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = kWhiteColor;
    // 屏幕刷新率
    [self.window addSubview:[[YYFPSLabel alloc] initWithFrame:CGRectMake(20, 70, 40, 20)]];
    
    self.window.rootViewController = nav;
    
    
    
#ifdef DEBUG
//    [[GDPerformanceMonitor sharedInstance] startMonitoring];
//    [[GDPerformanceMonitor sharedInstance] configureWithConfiguration:^(UILabel *textLabel) {
//        [textLabel setBackgroundColor:[UIColor blackColor]];
//        [textLabel setTextColor:[UIColor whiteColor]];
//        [textLabel.layer setBorderColor:[[UIColor blackColor] CGColor]];
//    }];
#endif
  
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
