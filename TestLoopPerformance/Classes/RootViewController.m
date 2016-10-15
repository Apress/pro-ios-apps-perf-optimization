//
//  RootViewController.m
//  TestLoopPerformance
//
//  Created by Vo Khang on 5/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "RootViewController.h"


@implementation RootViewController


#pragma mark -
#pragma mark View lifecycle

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSDate *date = [NSDate date];
    
    NSMutableArray *firstArray = [[NSMutableArray alloc] initWithCapacity:1000];
    NSMutableArray *secondArray = [[NSMutableArray alloc] initWithCapacity:1000];    
    
    for (int i = 0; i < 1000; i++) {
        [firstArray addObject:[NSNumber numberWithInt:i]];
    }
    
    for (int i = 0; i < 1000; i++) {
        [secondArray addObject:[NSNumber numberWithInt:i]];
    }
    
    for (int i = 0; i < 1000; i++) {
        for (int j = 0; j < 1000; j++) {
            if ([[firstArray objectAtIndex:i] isEqual:[secondArray objectAtIndex:j]]) {
                int i = 1 + 1;
            }
        }
    }
    
    NSDate *date2 = [NSDate date];
    NSLog(@"%f", [date2 timeIntervalSinceDate:date]);
}



#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
	// Configure the cell.

    return cell;
}

#pragma mark -
#pragma mark Memory management



@end

