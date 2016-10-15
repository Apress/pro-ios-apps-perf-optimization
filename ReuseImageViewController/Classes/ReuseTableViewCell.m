//
//  TableCellViewController.m
//  UITableViewPerformance
//
//  Created by Vo Khang on 20/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "ReuseTableViewCell.h"


@implementation ReuseTableViewCell
@synthesize avatar;
@synthesize imageNew;
@synthesize userName;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self != nil) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 30, 30)];
        [self.contentView addSubview:imageView];
    }
    return self;    
}




@end