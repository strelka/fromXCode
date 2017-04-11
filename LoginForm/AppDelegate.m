//
//  AppDelegate.m
//  LoginForm
//
//  Created by Jullia Sharaeva on 08.04.17.
//  Copyright © 2017 Jullia Sharaeva. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"
#import "ViewController4.h"
#import "ViewController5.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    ViewController1 *firstVC = [ViewController1 new];
    ViewController2 *secondVC = [ViewController2 new];
    ViewController3 *thirdVC = [ViewController3 new];
    
    NSArray *viewControllers = @[firstVC, secondVC, thirdVC];
    
    UITabBarController *tabBarController = [UITabBarController new];
    [tabBarController setViewControllers:viewControllers animated:YES];
    
    //UISplitViewController *splitViewController = [UISplitViewController new];
    
    //splitViewController.viewControllers = viewControllers;
    
    UINavigationController *navcontroller = [UINavigationController new];
    //navcontroller.viewControllers = @[firstVC];
    
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    
    return YES;
}

@end
