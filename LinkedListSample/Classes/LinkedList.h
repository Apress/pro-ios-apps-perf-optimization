//
//  LinkedList.h
//  LinkedListSample
//
//  Created by vodkhang on 5/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

@interface LinkedList : NSObject {
  @private
    ListNode *head;
 	ListNode *tail;
    ListNode *current;
}     	

@property (nonatomic, retain) ListNode *head;
@property (nonatomic, retain) ListNode *tail;
@property (nonatomic, retain) ListNode *current;

- (id)initWithHead:(NSObject *)value;
- (void)addToFront:(NSObject *)value;
- (void)addToEnd:(NSObject *)value;
- (void)insertObject:(NSObject *)object atIndex:(NSInteger)index;

- (NSObject *)first;
- (NSObject *)currentValue;
- (NSObject *)next;
- (NSObject *)previous;

- (NSUInteger)count;
- (NSObject *)objectAtIndex:(NSInteger)index;

- (BOOL)removeCurrent;
- (BOOL)removeObjectAtIndex:(NSInteger)index;


@end