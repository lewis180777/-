//
//  AppDelegate.m
//  MarBus
//
//  Created by YiHai on 15-3-2.
//  Copyright (c) 2015年 YiHai. All rights reserved.
//

#import "AppDelegate.h"
#import "AppRootViewController.h"
#import <UIButton+WebCache.h>
#import <UIImageView+WebCache.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    if(IOS_VERSION < 7.0){
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        
        //        [[UIApplication sharedApplication]setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
    }
    NSArray *arr1 = [NSArray arrayWithObjects:@"A",@"B", nil];
    NSMutableArray *arrMutable3=[NSMutableArray arrayWithArray:arr1];
    [arrMutable3 addObject:@"C"];
    [arrMutable3 addObject:@"D"];
    [arrMutable3 addObject:@"E"];
    NSLog(@"%@",arrMutable3);
    
    NSMutableArray *a = [[NSMutableArray alloc] init];
    [a addObject:@"A"];
    [a addObject:@"B"];
    NSMutableArray *b = [[NSMutableArray alloc] init];
    [b addObject:@"C"];
    [b addObject:@"D"];
    
    [a addObjectsFromArray:b];
    
    NSIndexSet *indexes = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, [a count])];
    [b insertObjects:a atIndexes:indexes];
     NSLog(@"%@   ----   %@",a,b);
    
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    AppRootViewController *appRoot = [[AppRootViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:appRoot];
    [self.window setRootViewController:nav];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
