//
//  Vertex.h
//  Graph
//
//  Created by vodkhang on 10/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//
#import <Foundation/Foundation.h>


@interface Vertex : NSObject {
  @private
    NSString *label;
    BOOL wasVisited;
    NSMutableSet *adjacentVertices;
}


@property (nonatomic,  copy) NSString *label;
@property (nonatomic, assign) BOOL wasVisited;
@property (nonatomic, retain) NSMutableSet *adjacentVertices;

- (id)initWithLabel:(NSString *)myLabel;

@end