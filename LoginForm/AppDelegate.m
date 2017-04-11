//
//  AppDelegate.m
//  LoginForm
//
//  Created by Jullia Sharaeva on 08.04.17.
//  Copyright © 2017 Jullia Sharaeva. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1104.h"
#import "ViewController1104_2.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //ViewController *vc = [[ViewController alloc] init];
    
    ViewController1104 *firstVC = [[ViewController1104 alloc]  init];
    //ViewController1104_2 *secondVC = [[ViewController1104_2 alloc] init];
    
    //NSArray *viewControllers = @[firstVC, secondVC];
    
    //UITabBarController *tabBarController = [UITabBarController new];
    //[tabBarController setViewControllers:viewControllers animated:YES];
    //UISplitViewController *splitViewController = [UISplitViewController new];
    
    //splitViewController.viewControllers = viewControllers;
    
    UINavigationController *navcontroller = [UINavigationController new];
    navcontroller.viewControllers = @[firstVC];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = navcontroller;
    
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    
    return YES;
}

@end
