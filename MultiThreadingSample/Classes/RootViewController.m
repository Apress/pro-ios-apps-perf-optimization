//
//  RootViewController.m
//  MultiThreadingSample
//
//  Created by vodkhang on 15/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "RootViewController.h"
#import "UIUtilities.h"
#import "ImageCell.h"
#import "UIImageView+Network.h"

@implementation RootViewController
@synthesize imagesArray;


#pragma mark -
#pragma mark View lifecycle


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    self.imagesArray = [[NSMutableArray alloc] init];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2010/09/Screen-shot-2011-04-24-at-10.03.06-PM-300x33.png"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2010/09/Screen-shot-2011-04-24-at-9.59.37-PM-300x284.png"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/LessonPlan-286x300.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/image.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2009/12/choosestudies-300x200.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2009/12/semanticweb-300x282.png"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2010/08/apple-xcode-icon.png"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/Screen-shot-2011-04-12-at-11.55.35-AM-300x187.png"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/image.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/UITableViewCell-300x180.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/iPhone-Configuration-Utility-Device1-300x171.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/iPhone-Configuration-Utility-Install-Applications-300x172.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/iPhone-Configuration-Utility-Applications-300x172.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/iPhone-Configuration-Utility-SelectFile-300x172.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/04/iPhone-Configuration-Utility-Device-300x171.jpg"];
    [self.imagesArray addObject:@"http://vodkhang.com/wp-content/uploads/2011/03/robocode_logo_tanks-300x112.png"];
}

#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.imagesArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60.f;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    ImageCell *cell = (ImageCell *) [UIUtilities getCellWithTableView:tableView
                                                                 cellIdentifier:CellIdentifier
                                                                        nibName:@"ImageCell"];
    
	// Configure the cell.
    NSURL *imageURL = [NSURL URLWithString:[self.imagesArray objectAtIndex:indexPath.row]];
    [cell.contentImage displayImageWithURL:imageURL];
    return cell;
}


@end