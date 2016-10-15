//
//  GraphAppDelegate.h
//  Graph
//
//  Created by vodkhang on 10/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GraphViewController;

@interface GraphAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GraphViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GraphViewController *viewController;

@end

