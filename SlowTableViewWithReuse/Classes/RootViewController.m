//
//  RootViewController.m
//  SlowTableViewWithReuse
//
//  Created by Vo Khang on 24/03/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "RootViewController.h"
#import "ReuseTableViewCell.h"


@implementation RootViewController



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

- (UITableViewCell *)cellWithTableView:(UITableView *)tableView cellIdentifier:(NSString *)cellIdentifier nibName:(NSString *)nibName {
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


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSDate *date = [NSDate date];
    static NSString *CellIdentifier = @"CellIdentifier";
    
    ReuseTableViewCell *cell = (ReuseTableViewCell *) [self cellWithTableView:tableView
                                                               cellIdentifier:CellIdentifier 
                                                                      nibName:@"ReuseTableViewCell"];
    
    
    NSString *avatarFile = [NSString stringWithFormat:@"a0"];
    NSString *avatarName = [[NSBundle mainBundle] pathForResource:avatarFile ofType:@"jpeg"];
    cell.avatar.image = [[UIImage alloc] initWithContentsOfFile:avatarName];
    cell.userName.text = @"Hi There";
    NSDate *date2 = [NSDate date];
    NSLog(@"%f", [date2 timeIntervalSinceDate:date]);
    return cell;
}

#pragma mark -
#pragma mark Memory management





@end

