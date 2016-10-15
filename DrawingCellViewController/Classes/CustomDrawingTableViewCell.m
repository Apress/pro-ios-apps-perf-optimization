//
//  CustomDrawingTableViewCell.m
//  DrawingCellViewController
//
//  Created by Vo Khang on 28/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "CustomDrawingTableViewCell.h"
#import "CustomDrawingView.h"

@implementation CustomDrawingTableViewCell
@synthesize userName;
@synthesize postTitle;
@synthesize postContent;
@synthesize dateTime;
@synthesize avatarImage;
@synthesize postImage;
@synthesize senderImage;
@synthesize morePhotosImage;

@synthesize drawingView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
	if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        CGRect subFrame = CGRectMake(0.0, 0.0, self.contentView.bounds.size.width, self.contentView.bounds.size.height);
		drawingView = [[CustomDrawingView alloc] initWithFrame:subFrame];
		drawingView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
		[self.contentView addSubview:drawingView];
	}
	return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state.
}


- (void)updateMyCell {
    self.drawingView.userName = self.userName;
    self.drawingView.postTitle = self.postTitle;
    self.drawingView.postContent = self.postContent;
    self.drawingView.dateTime = self.dateTime;
    
    self.drawingView.avatarImage = self.avatarImage;
    self.drawingView.postImage = self.postImage;
    self.drawingView.senderImage = self.senderImage;
    self.drawingView.morePhotosImage = self.morePhotosImage;
    
    [self.drawingView setNeedsDisplay];
}

@end