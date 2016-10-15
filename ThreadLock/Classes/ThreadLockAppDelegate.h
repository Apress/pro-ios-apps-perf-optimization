//
//  ThreadLockAppDelegate.h
//  ThreadLock
//
//  Created by vodkhang on 19/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ThreadLockViewController;

@interface ThreadLockAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ThreadLockViewController *viewController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet ThreadLockViewController *viewController;

@end

