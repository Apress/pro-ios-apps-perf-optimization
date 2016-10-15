//
//  TestC_CPlusAppDelegate.h
//  TestC_CPlus
//
//  Created by vodkhang on 11/07/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestC_CPlusViewController;

@interface TestC_CPlusAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TestC_CPlusViewController *viewController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet TestC_CPlusViewController *viewController;

@end

