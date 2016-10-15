//
//  Stack.m
//  Graph
//
//  Created by vodkhang on 10/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "Stack.h"


@implementation Stack
@synthesize myStackArray;

- (id) init {
    self = [super init];
    if (self != nil) {
        self.myStackArray = [[[NSMutableArray alloc] init] autorelease];
    }
    return self;
}


- (void) dealloc {
	[myStackArray release];
    [super dealloc];
}

- (void)push:(Vertex *)vertex {
    [self.myStackArray addObject:vertex];
}

- (Vertex *)pop {
    Vertex *vertex = [self.myStackArray lastObject];
    [self.myStackArray removeLastObject];
    return vertex;
}

- (Vertex *)peek {
    return [self.myStackArray lastObject];
}

- (BOOL)isEmpty {
    return [self.myStackArray count] == 0;
}

@end