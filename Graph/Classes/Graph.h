//
//  Graph.h
//  Graph
//
//  Created by vodkhang on 10/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertex.h"

@interface Graph : NSObject {
  @private
    NSMutableArray *vertices;
}

@property (nonatomic, retain) NSMutableArray *vertices;

- (void)addVertex:(Vertex *)vertex;
- (void)addEdgeForVertex:(Vertex *)vertex1 andVertex:(Vertex *)vertex2;
- (void)depthFirstSearch;
@end