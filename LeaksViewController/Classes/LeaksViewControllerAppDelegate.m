//
//  LeaksViewControllerAppDelegate.m
//  LeaksViewController
//
//  Created by Vo Khang on 10/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "LeaksViewControllerAppDelegate.h"
#import "RootViewController.h"


@implementation LeaksViewControllerAppDelegate

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

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

