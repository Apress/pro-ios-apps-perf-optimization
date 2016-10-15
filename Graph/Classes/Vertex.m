//
//  Vertex.m
//  Graph
//
//  Created by vodkhang on 10/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "Vertex.h"


@implementation Vertex
@synthesize label;
@synthesize wasVisited;
@synthesize adjacentVertices;

- (id)initWithLabel:(NSString *)myLabel {
    self = [super init];
    if (self != nil) {
        self.label = myLabel;
        self.wasVisited = NO;
        self.adjacentVertices = [[[NSMutableSet alloc] init] autorelease];
    }
    return self;
}


- (void) dealloc {
	[label release];
	[adjacentVertices release];
    [super dealloc];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"Vertex: %@", label];
}

@end