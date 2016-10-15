//
//  CustomDrawingTableViewCell.h
//  DrawingCellViewController
//
//  Created by Vo Khang on 28/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomDrawingView.h"

@interface CustomDrawingTableViewCell : UITableViewCell {
  @private
    CustomDrawingView *drawingView;
    NSString *userName;
    NSString *postTitle;
    NSString *postContent;
    NSString *dateTime;
    UIImage *avatarImage;
    UIImage *postImage;
    UIImage *senderImage;
    UIImage *morePhotosImage;
}

@property (nonatomic, strong) CustomDrawingView *drawingView;

- (void)updateMyCell;

@property (nonatomic,  copy) NSString *userName;
@property (nonatomic,  copy) NSString *postTitle;
@property (nonatomic,  copy) NSString *postContent;
@property (nonatomic,  copy) NSString *dateTime;
@property (nonatomic, strong) IBOutlet UIImage *avatarImage;
@property (nonatomic, strong) IBOutlet UIImage *postImage;
@property (nonatomic, strong) IBOutlet UIImage *senderImage;
@property (nonatomic, strong) IBOutlet UIImage *morePhotosImage;
@end