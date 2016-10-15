//
//  SlowPerformanceTableViewAppDelegate.h
//  SlowPerformanceTableView
//
//  Created by Vo Khang on 21/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SlowPerformanceTableViewAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet UINavigationController *navigationController;

@end

