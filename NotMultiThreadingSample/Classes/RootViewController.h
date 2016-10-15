//
//  RootViewController.h
//  NotMultiThreadingSample
//
//  Created by vodkhang on 15/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
  @private
    NSMutableArray *imagesArray;
}

@property (nonatomic, strong) NSMutableArray *imagesArray;
@end