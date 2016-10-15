//
//  SlowTableViewWithReuseAppDelegate.m
//  SlowTableViewWithReuse
//
//  Created by Vo Khang on 24/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "SlowTableViewWithReuseAppDelegate.h"
#import "RootViewController.h"


@implementation SlowTableViewWithReuseAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    // Set the navigation controller as the window's root view controller and display.
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];

    return YES;
}

#pragma mark -
#pragma mark Memory management




@end

