//
//  RootViewController.m
//  LeaksViewController
//
//  Created by Vo Khang on 10/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "RootViewController.h"
#import "DetailViewController.h"

@implementation RootViewController
#pragma mark -
#pragma mark Table view data source

// Customize the number of sections in the table view.
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}


// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
	// Configure the cell.
    cell.textLabel.text = @"Hi";
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *avatarFile = [NSString stringWithFormat:@"a0"];
    NSString *avatarName = [[NSBundle mainBundle] pathForResource:avatarFile ofType:@"jpeg"];
    UIImage *image1 = [[UIImage alloc] initWithContentsOfFile:avatarName];
    NSLog(@"image: %@", image1);
    image1 = [[UIImage alloc] initWithContentsOfFile:avatarName];
    NSLog(@"image: %@", image1);    
    
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    [self.navigationController pushViewController:detailViewController animated:YES];
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
    [super dealloc];
}


@end

