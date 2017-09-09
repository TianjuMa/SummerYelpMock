//
//  AppDelegate.m
//  SummerYelpMock
//
//  Created by matianju on 8/26/17.
//  Copyright © 2017 TianjuMa. All rights reserved.
//

#import "AppDelegate.h"
#import "YelpNetworking.h"
#import "YelpViewController.h"
#import "MapViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-  (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    YelpViewController *svc = [[YelpViewController alloc] init];
    
    UINavigationController *nvc1 = [[UINavigationController alloc] initWithRootViewController:svc];
    nvc1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Search" image:[UIImage imageNamed:@"Search"] tag:0];
    
    nvc1.navigationBar.barStyle = UIBarStyleBlack;
    
    nvc1.navigationBar.barTintColor = [UIColor  colorWithRed:196.0f/255.0f green:19.0f/255.0f blue:0.0f/255.0f alpha:1.0f];
    nvc1.navigationBar.tintColor = [UIColor whiteColor];
    [nvc1.navigationBar
     setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    
    MapViewController *mapVC = [[MapViewController alloc] init];
    
    UINavigationController *nvc2 = [[UINavigationController alloc] initWithRootViewController:mapVC];
    
    nvc2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Map" image: [UIImage imageNamed:@"Map"] tag:0];
    
    UITabBarController *tbc = [[UITabBarController alloc] init];
    
    [tbc setViewControllers:@[nvc1,nvc2]];
    
    self.window.rootViewController = tbc;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
    
}

@end
