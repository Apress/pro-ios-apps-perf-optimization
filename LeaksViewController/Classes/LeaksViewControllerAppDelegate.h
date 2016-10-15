//
//  LeaksViewControllerAppDelegate.h
//  LeaksViewController
//
//  Created by Vo Khang on 10/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeaksViewControllerAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

