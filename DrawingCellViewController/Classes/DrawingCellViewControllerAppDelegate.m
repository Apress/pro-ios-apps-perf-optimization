//
//  DrawingCellViewControllerAppDelegate.m
//  DrawingCellViewController
//
//  Created by Vo Khang on 28/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "DrawingCellViewControllerAppDelegate.h"
#import "RootViewController.h"


@implementation DrawingCellViewControllerAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
    
    [self.window addSubview:self.navigationController.view];
    [self.window makeKeyAndVisible];

    return YES;
}



@end

