//
//  ThreadSafetyAppDelegate.m
//  ThreadSafety
//
//  Created by vodkhang on 17/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "ThreadSafetyAppDelegate.h"
#import "ThreadSafetyViewController.h"

@implementation ThreadSafetyAppDelegate

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
