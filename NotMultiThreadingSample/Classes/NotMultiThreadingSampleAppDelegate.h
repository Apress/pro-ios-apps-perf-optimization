//
//  NotMultiThreadingSampleAppDelegate.h
//  NotMultiThreadingSample
//
//  Created by vodkhang on 15/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NotMultiThreadingSampleAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet UINavigationController *navigationController;

@end

