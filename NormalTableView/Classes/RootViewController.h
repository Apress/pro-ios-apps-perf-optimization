//
//  RootViewController.h
//  NormalTableView
//
//  Created by Vo Khang on 24/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController <UIScrollViewDelegate> {
  @private
    NSDate *date;
    NSDate *date2;
}

@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSDate *date2;

@end