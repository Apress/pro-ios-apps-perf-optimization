//
//  ThreadSafetyViewController.m
//  ThreadSafety
//
//  Created by vodkhang on 17/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "ThreadSafetyViewController.h"

@implementation ThreadSafetyViewController
@synthesize lockedObj;
@synthesize storages;

- (void)pushDataIn {
    @autoreleasepool {
        while (YES) {
            @synchronized(lockedObj) {            
                [self.storages addObject:[NSObject new]];
                [NSThread sleepForTimeInterval:0.1];
            }
        }
    }
}

- (void)popDataOut {
    @autoreleasepool {
        while (YES) {
            @synchronized(lockedObj) {            
                if ([self.storages count] > 0) {
                    NSObject *object = [self.storages objectAtIndex:0];
                    NSLog(@"object: %@", object);
                    [self.storages removeObjectAtIndex:0];
                }
                [NSThread sleepForTimeInterval:0.1];
            }
        }
    }
}

- (void)viewDidAppear:(BOOL)animated {
    self.storages = [NSMutableArray array];
    self.lockedObj = [NSObject new];
    [NSThread detachNewThreadSelector:@selector(pushDataIn) toTarget:self withObject:nil];    
    [NSThread detachNewThreadSelector:@selector(popDataOut) toTarget:self withObject:nil];
    [NSThread detachNewThreadSelector:@selector(popDataOut) toTarget:self withObject:nil];
}

@end