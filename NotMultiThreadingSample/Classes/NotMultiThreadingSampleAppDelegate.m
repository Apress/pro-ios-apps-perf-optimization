//
//  NotMultiThreadingSampleAppDelegate.m
//  NotMultiThreadingSample
//
//  Created by vodkhang on 15/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "NotMultiThreadingSampleAppDelegate.h"
#import "RootViewController.h"


@implementation NotMultiThreadingSampleAppDelegate

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


@end

