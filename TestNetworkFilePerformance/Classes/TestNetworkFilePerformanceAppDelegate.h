//
//  TestNetworkFilePerformanceAppDelegate.h
//  TestNetworkFilePerformance
//
//  Created by Vo Khang on 18/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestNetworkFilePerformanceViewController;

@interface TestNetworkFilePerformanceAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TestNetworkFilePerformanceViewController *viewController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet TestNetworkFilePerformanceViewController *viewController;

@end

