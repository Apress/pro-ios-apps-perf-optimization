//
//  ReuseImageViewControllerAppDelegate.m
//  ReuseImageViewController
//
//  Created by Vo Khang on 24/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "ReuseImageViewControllerAppDelegate.h"
#import "RootViewController.h"


@implementation ReuseImageViewControllerAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    [self.window addSubview:self.navigationController.view];
    [self.window makeKeyAndVisible];

    return YES;
}

@end

