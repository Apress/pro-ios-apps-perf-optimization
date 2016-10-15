//
//  TestC_CPlusViewController.m
//  TestC_CPlus
//
//  Created by vodkhang on 11/07/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "TestC_CPlusViewController.h"
#import "MyObject.h"
@implementation TestC_CPlusViewController

@synthesize resultLabel;

- (void)viewDidLoad {
    MyObject *myObject = [[MyObject alloc] init];
    NSInteger myInt = [myObject computeHere];
    NSLog(@"myInt: %d", myInt);
    resultLabel.text = [NSString stringWithFormat:@"%d", myInt];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



@end
