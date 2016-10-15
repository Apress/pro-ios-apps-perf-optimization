//
//  RootViewController.m
//  ReuseImageViewController
//
//  Created by Vo Khang on 24/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "RootViewController.h"
#import "CustomDrawingTableViewCell.h"

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
    return 72;
}

- (UITableViewCell *)getCellWithTableView:(UITableView *)tableView cellIdentifier:(NSString *)cellIdentifier nibName:(NSString *)nibName {
    UITableViewCell *textCell =  [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    //    NSLog(@"textCell: %@", textCell);
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

- (UIImage *)imageFromResizeImage:(UIImage *)anImage toSize:(CGSize)targetSize {
	UIGraphicsBeginImageContext(targetSize);
	[anImage drawInRect:CGRectMake(0,0,targetSize.width,targetSize.height)];
	//image is the original UIImage
	UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return newImage;
}


- (UIImage *)imageWithName:(NSString *)name {
    if ([self.imageDictionary objectForKey:name]) {
        return [self.imageDictionary objectForKey:name];
    }
    
    UIImage *image = [[UIImage alloc] initWithContentsOfFile:name];
    CGSize targetSize = CGSizeMake(55, 52);
    UIImage *resizedImage = [self imageFromResizeImage:image toSize:targetSize];
    
    
    [self.imageDictionary setObject:resizedImage forKey:name];
    return resizedImage;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellIdentifier";

    CustomDrawingTableViewCell *cell = (CustomDrawingTableViewCell *) [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[CustomDrawingTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    NSString *avatarFile = [NSString stringWithFormat:@"a0"];
    NSString *imageFile = [NSString stringWithFormat:@"0"];
    NSString *joinmeFile = [NSString stringWithFormat:@"joinme"];
    NSString *plusButton = [NSString stringWithFormat:@"plusButton"];
    
    NSString *avatarName = [[NSBundle mainBundle] pathForResource:avatarFile ofType:@"jpeg"];
    NSString *imageName = [[NSBundle mainBundle] pathForResource:imageFile ofType:@"JPG"];
    NSString *joinMeName = [[NSBundle mainBundle] pathForResource:joinmeFile ofType:@"jpg"];
    NSString *plusButtonName = [[NSBundle mainBundle] pathForResource:plusButton ofType:@"jpeg"];
    
    
    cell.avatarImage = [self imageWithName:avatarName];
    cell.postImage = [self imageWithName:imageName];
    cell.senderImage = [self imageWithName:joinMeName];
    cell.morePhotosImage = [self imageWithName:plusButtonName];
    
    cell.userName = [NSString stringWithFormat:@"vodkhang %d", indexPath.row];
    cell.postTitle = [NSString stringWithFormat:@"My Newest Post: %d", indexPath.row];
    cell.postContent = [NSString stringWithFormat:@"I am writing book on iPhone %d", indexPath.row];
    cell.dateTime = [NSString stringWithFormat:@"%d minutes ago", indexPath.row];
    [cell updateMyCell];
    return cell;
}


@end