//
//  TableCellViewController.m
//  UITableViewPerformance
//
//  Created by Vo Khang on 20/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "TableCellViewController.h"


@implementation TableCellViewController
@synthesize avatar;
@synthesize userName;
@synthesize postImage;
@synthesize senderImage;
@synthesize postTitle;
@synthesize postContent;
@synthesize dateTimeLabel;
@synthesize morePhotosLabel;


- (void)dealloc {

	[avatar release];
	[userName release];
	[postImage release];
	[senderImage release];
	[postTitle release];
	[postContent release];
	[dateTimeLabel release];
	[morePhotosLabel release];
    [super dealloc];
}


@end