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


@property (nonatomic, retain) IBOutlet UIImageView *avatar;
@property (nonatomic, retain) IBOutlet UILabel *userName;
@property (nonatomic, retain) IBOutlet UIImageView *postImage;
@property (nonatomic, retain) IBOutlet UIImageView *senderImage;
@property (nonatomic, retain) IBOutlet UILabel *postTitle;
@property (nonatomic, retain) IBOutlet UILabel *postContent;
@property (nonatomic, retain) IBOutlet UILabel *dateTimeLabel;
@property (nonatomic, retain) IBOutlet UIImageView *morePhotosLabel;
@end