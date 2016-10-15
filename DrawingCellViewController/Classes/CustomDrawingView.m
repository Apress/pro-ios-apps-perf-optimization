//
//  CustomDrawingView.m
//  DrawingCellViewController
//
//  Created by Vo Khang on 28/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "CustomDrawingView.h"


@implementation CustomDrawingView
@synthesize userName;
@synthesize postTitle;
@synthesize postContent;
@synthesize dateTime;
@synthesize avatarImage;
@synthesize postImage;
@synthesize senderImage;
@synthesize morePhotosImage;



- (id)initWithFrame:(CGRect)frame {
	
	if (self = [super initWithFrame:frame]) {
		self.opaque = YES;
		self.backgroundColor = [UIColor whiteColor];
	}
	return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
    
#define LEFT_COLUMN_OFFSET 10
#define LEFT_COLUMN_WIDTH 130
	
#define MAIN_FONT_SIZE 17
#define MIN_MAIN_FONT_SIZE 16
    
	// Color and font for the main text items (time zone name, time)
	UIColor *mainTextColor = nil;
	UIFont *userNameFont = [UIFont systemFontOfSize:MAIN_FONT_SIZE];
    
    mainTextColor = [UIColor blackColor];
    self.backgroundColor = [UIColor whiteColor];
	
	// In this example we will never be editing, but this illustrates the appropriate pattern.    
    
    // Set the color for the main text items.
    [mainTextColor set];
    
    /*
     Draw the locale name top left; use the NSString UIKit method to scale the font size down if the text does not fit in the given area
     */
    [self.userName drawInRect:CGRectMake(70,0, 95, 21) withFont:userNameFont lineBreakMode:UILineBreakModeTailTruncation 
                    alignment:UITextAlignmentLeft];
    
    UIFont *postTitleFont = [UIFont boldSystemFontOfSize:12];
    [self.postTitle drawInRect:CGRectMake(100, 20, 151, 21) withFont:postTitleFont lineBreakMode:UILineBreakModeTailTruncation
                     alignment:UITextAlignmentLeft];
    
    UIFont *postContentFont = [UIFont systemFontOfSize:12];
    [self.postContent drawInRect:CGRectMake(100, 33, 174, 15) withFont:postContentFont lineBreakMode:UILineBreakModeTailTruncation
                       alignment:UITextAlignmentLeft];
    
    UIFont *dateTimeFont = [UIFont systemFontOfSize:13];
    [self.dateTime drawInRect:CGRectMake(100, 49, 109, 21) withFont:dateTimeFont
                lineBreakMode:UILineBreakModeTailTruncation alignment:UITextAlignmentLeft];
            
    // Drawing Image
    [self.avatarImage drawInRect:CGRectMake(20, 5, 36, 34)];
    [self.postImage drawInRect:CGRectMake(70, 22, 22, 26)];
    [self.senderImage drawInRect:CGRectMake(70, 50, 22, 21)];
    [self.morePhotosImage drawInRect:CGRectMake(279, 20, 28, 26)];
}




@end