//
//  Stack.h
//  Graph
//
//  Created by vodkhang on 10/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vertex.h"

@interface Stack : NSObject {
  @private
    NSMutableArray *myStackArray;
}

@property (nonatomic, retain) NSMutableArray *myStackArray;

- (void)push:(Vertex *)vertex;
- (Vertex *)pop;
- (Vertex *)peek;
- (BOOL)isEmpty;
@end