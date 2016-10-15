//
//  ListNode.m
//  LinkedListSample
//
//  Created by vodkhang on 5/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "ListNode.h"

@implementation ListNode

@synthesize value;
@synthesize next;
@synthesize pre;

- (id)initWithObject:(NSObject *)object {
    if (self = [super init]) {
        self.value = object;
    }
    return self;
}

- (void) dealloc {
    [value release];
    [next release];
    [pre release];
    [super dealloc];
}


@end