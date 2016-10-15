//
//  RootViewController.m
//  ReuseImageViewController
//
//  Created by Vo Khang on 24/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "RootViewController.h"
#import "TableCellViewController.h"

@implementation RootViewController
@synthesize imageDictionary;


#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
}

- (UITableViewCell *)getCellWithTableView:(UITableView *)tableView cellIdentifier:(NSString *)cellIdentifier nibName:(NSString *)nibName {
    UITableViewCell *textCell =  [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (textCell == nil) {
        NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:nibName
                                                                 owner:nil
                                                               options:nil];
        
        for (id currentObject in topLevelObjects) {
            if ([currentObject isKindOfClass:[UITableViewCell class]]) {
                textCell = (UITableViewCell *)currentObject;
                break;
            }
        }
    }
    return textCell;
}


- (UIImage *)imageWithName:(NSString *)name {
    if ([self.imageDictionary objectForKey:name]) {
        return [self.imageDictionary objectForKey:name];
    }
    
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:name];
    UIImage *resizedImage = image;
    
    [self.imageDictionary setObject:resizedImage forKey:name];
    return resizedImage;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDate *date = [NSDate date];
    static NSString *CellIdentifier = @"CellIdentifier";
    
    TableCellViewController *cell = (TableCellViewController *) [self getCellWithTableView:tableView
                                                                            cellIdentifier:CellIdentifier 
                                                                                   nibName:@"TableCellViewController"];
    
    
    
    NSString *avatarFile = [NSString stringWithFormat:@"a0"];
    NSString *imageFile = [NSString stringWithFormat:@"0"];
    NSString *joinmeFile = [NSString stringWithFormat:@"joinme"];
    NSString *plusButton = [NSString stringWithFormat:@"plusButton"];
    
    NSString *avatarName = [[NSBundle mainBundle] pathForResource:avatarFile ofType:@"jpeg"];
    NSString *imageName = [[NSBundle mainBundle] pathForResource:imageFile ofType:@"JPG"];
    NSString *joinMeName = [[NSBundle mainBundle] pathForResource:joinmeFile ofType:@"jpg"];
    NSString *plusButtonName = [[NSBundle mainBundle] pathForResource:plusButton ofType:@"jpeg"];

    
    cell.avatar.image = [self imageWithName:avatarName];
    cell.postImage.image = [self imageWithName:imageName];
    cell.senderImage.image = [self imageWithName:joinMeName];
    cell.morePhotosLabel.image = [self imageWithName:plusButtonName];
    
    cell.userName.text = [NSString stringWithFormat:@"vodkhang %d", indexPath.row];
    cell.postTitle.text = [NSString stringWithFormat:@"My Newest Post: %d", indexPath.row];
    cell.postContent.text = [NSString stringWithFormat:@"I am writing book on iPhone %d", indexPath.row];
    cell.dateTimeLabel.text = [NSString stringWithFormat:@"%d minutes ago", indexPath.row];
        
	// Configure the cell.
    NSDate *date2 = [NSDate date];
    NSLog(@"%f", [date2 timeIntervalSinceDate:date]);
    return cell;
}

#pragma mark -
#pragma mark Memory management




@end