//
//  TestNetworkFilePerformanceAppDelegate.m
//  TestNetworkFilePerformance
//
//  Created by Vo Khang on 18/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "TestNetworkFilePerformanceAppDelegate.h"
#import "TestNetworkFilePerformanceViewController.h"

@implementation TestNetworkFilePerformanceAppDelegate

@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.

	// Set the view controller as the window's root view controller and display.
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];

    return YES;
}



@end
