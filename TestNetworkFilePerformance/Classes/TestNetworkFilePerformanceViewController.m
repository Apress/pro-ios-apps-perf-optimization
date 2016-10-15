//
//  TestNetworkFilePerformanceViewController.m
//  TestNetworkFilePerformance
//
//  Created by Vo Khang on 18/04/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "TestNetworkFilePerformanceViewController.h"

@implementation TestNetworkFilePerformanceViewController




// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    NSDate *date = [NSDate date];
    
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"jpg"];    
    [[UIImage alloc] initWithContentsOfFile:imagePath];
    NSLog(@"time: %f", [[NSDate date] timeIntervalSinceDate:date]);
    
    NSDate *date2 = [NSDate date];
    NSData *imageData = [NSData dataWithContentsOfURL:
                         [NSURL URLWithString:@"http://vodkhang.com/wp-content/uploads/2011/04/image.jpg"]];
    [UIImage imageWithData:imageData];
    
    NSLog(@"time: %f", [[NSDate date] timeIntervalSinceDate:date2]);        
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
