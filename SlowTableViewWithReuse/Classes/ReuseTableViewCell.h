//
//  TableCellViewController.h
//  UITableViewPerformance
//
//  Created by Vo Khang on 20/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ReuseTableViewCell : UITableViewCell {
  @private
    UIImageView *avatar;
    UIImageView *imageNew;
    UILabel *userName;
}


@property (nonatomic, strong) IBOutlet UIImageView *avatar;
@property (nonatomic, strong) IBOutlet UIImageView *imageNew;
@property (nonatomic, strong) IBOutlet UILabel *userName;
@end