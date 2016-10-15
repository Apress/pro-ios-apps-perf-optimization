//
//  TestLoopPerformanceAppDelegate.m
//  TestLoopPerformance
//
//  Created by Vo Khang on 5/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "TestLoopPerformanceAppDelegate.h"
#import "RootViewController.h"


@implementation TestLoopPerformanceAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    
    // Set the navigation controller as the window's root view controller and display.
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];

    return YES;
}

#pragma mark -
#pragma mark Memory management



@end

