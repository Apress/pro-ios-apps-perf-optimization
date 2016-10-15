//
//  ImageCacheCell.h
//  ImageCachingLibrary
//
//  Created by Vo Khang on 24/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ImageCell : UITableViewCell {
  @private
    UILabel *contentLabel;
    UIImageView *contentImage;
}

@property (nonatomic, strong) IBOutlet UILabel *contentLabel;
@property (nonatomic, strong) IBOutlet UIImageView *contentImage;

@end