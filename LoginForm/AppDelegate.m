//
//  AppDelegate.m
//  LoginForm
//
//  Created by Jullia Sharaeva on 08.04.17.
//  Copyright © 2017 Jullia Sharaeva. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController1.h"


@interface AppDelegate ()
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    ViewController1 *firstVC = [ViewController1 new];
    
    UINavigationController *navc = [[UINavigationController alloc]initWithRootViewController:firstVC];
    navc.viewControllers = @[firstVC];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = navc;
    
    [self.window makeKeyAndVisible];
    // Override point for customization after application launch.
    
    return YES;
}

@end
