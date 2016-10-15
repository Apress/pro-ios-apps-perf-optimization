//
//  TableCellViewController.h
//  UITableViewPerformance
//
//  Created by Vo Khang on 20/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TableCellViewController : UITableViewCell {
  @private
    UIImageView *avatar;
    UILabel *userName;
    UIImageView *postImage;
    UIImageView *senderImage;
    UILabel *postTitle;
    UILabel *postContent;
    UILabel *dateTimeLabel;
    UIImageView *morePhotosLabel;
}


@property (nonatomic, strong) IBOutlet UIImageView *avatar;
@property (nonatomic, strong) IBOutlet UILabel *userName;
@property (nonatomic, strong) IBOutlet UIImageView *postImage;
@property (nonatomic, strong) IBOutlet UIImageView *senderImage;
@property (nonatomic, strong) IBOutlet UILabel *postTitle;
@property (nonatomic, strong) IBOutlet UILabel *postContent;
@property (nonatomic, strong) IBOutlet UILabel *dateTimeLabel;
@property (nonatomic, strong) IBOutlet UIImageView *morePhotosLabel;
@end