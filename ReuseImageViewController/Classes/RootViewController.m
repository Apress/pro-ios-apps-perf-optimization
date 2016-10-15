//
//  RootViewController.m
//  ReuseImageViewController
//
//  Created by Vo Khang on 24/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "RootViewController.h"
#import "ReuseTableViewCell.h"

@implementation RootViewController
@synthesize imageDictionary;


#pragma mark -
#pragma mark View lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageDictionary = [NSMutableDictionary dictionary];
}


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
    [self.imageDictionary setObject:image forKey:name];
    return image;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"CellIdentifier";
    
    ReuseTableViewCell *cell = (ReuseTableViewCell *) [self getCellWithTableView:tableView
                                                                            cellIdentifier:CellIdentifier 
                                                                                   nibName:@"ReuseTableViewCell"];
    
    NSString *avatarFile = [NSString stringWithFormat:@"a0"];
    NSString *avatarName = [[NSBundle mainBundle] pathForResource:avatarFile ofType:@"jpeg"];
    cell.avatar.image = [self imageWithName:avatarName];
    cell.userName.text = [NSString stringWithFormat:@"hi here: %d", indexPath.row];
	// Configure the cell.
    return cell;
}
@end