//
//  RootViewController.h
//  ReuseImageViewController
//
//  Created by Vo Khang on 24/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
  @private
    NSMutableDictionary *imageDictionary;
}

@property (nonatomic, strong) NSMutableDictionary *imageDictionary;
@end