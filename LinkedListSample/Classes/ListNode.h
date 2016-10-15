//
//  ListNode.h
//  LinkedListSample
//
//  Created by vodkhang on 5/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ListNode : NSObject {
  @private 
    NSObject *value;
    ListNode *next;
    ListNode *pre;
}

@property (nonatomic, retain) NSObject *value;
@property (nonatomic, retain) ListNode *next;
@property (nonatomic, retain) ListNode *pre;

- (id)initWithObject:(NSObject *)object;

@end