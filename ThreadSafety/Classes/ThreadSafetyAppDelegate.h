//
//  ThreadSafetyAppDelegate.h
//  ThreadSafety
//
//  Created by vodkhang on 17/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ThreadSafetyViewController;

@interface ThreadSafetyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ThreadSafetyViewController *viewController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet ThreadSafetyViewController *viewController;

@end

