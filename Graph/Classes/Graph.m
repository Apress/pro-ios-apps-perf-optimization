//
//  Graph.m
//  Graph
//
//  Created by vodkhang on 10/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "Graph.h"
#import "Stack.h"
#import "Vertex.h"

@implementation Graph
@synthesize vertices;
- (id) init {
    self = [super init];
    if (self != nil) {
        self.vertices = [[[NSMutableArray alloc] init] autorelease];
    }
    return self;
}

- (void) dealloc {    
	[vertices release];
    [super dealloc];
}

- (void)addVertex:(Vertex *)vertex {
    [self.vertices addObject:vertex];
}

- (void)addEdgeForVertex:(Vertex *)vertex1 andVertex:(Vertex *)vertex2 {
    [vertex1.adjacentVertices addObject:vertex2];
    [vertex2.adjacentVertices addObject:vertex1];
}

- (void)display:(Vertex *)vertex {
    NSLog(@"%@", vertex);
}

- (void)depthFirstSearch {
    if ([self.vertices count] == 0) {
        NSLog(@"There is no vertex in graph");
        return;
    }
    
    Vertex *firstVertex = [self.vertices objectAtIndex:0];
    firstVertex.wasVisited = YES;
    [self display:firstVertex];
    
    Stack *stack = [[Stack alloc] init];
    [stack push:firstVertex];
    while (![stack isEmpty]) {
        Vertex *lastVertex = [stack peek];
        
        BOOL isAddNewVertex = NO;
        
        for (Vertex *adjacentVertex in lastVertex.adjacentVertices) {
            if (!adjacentVertex.wasVisited) {
                [stack push:adjacentVertex];
                adjacentVertex.wasVisited = YES;
                isAddNewVertex = YES;
                [self display:adjacentVertex];
                
                break;
            }
        }
        
        if (!isAddNewVertex) {
            [stack pop];
        }
    }
}


@end