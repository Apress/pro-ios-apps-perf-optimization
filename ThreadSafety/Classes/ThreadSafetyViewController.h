//
//  ThreadSafetyViewController.h
//  ThreadSafety
//
//  Created by vodkhang on 17/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThreadSafetyViewController : UIViewController {
  @private
    NSMutableArray *storages;
    NSObject *lockedObj;
}

@property (nonatomic, strong) NSMutableArray *storages;
@property (nonatomic, strong) NSObject *lockedObj;
@end