//
//  LinkedList.m
//  LinkedListSample
//
//  Created by vodkhang on 5/05/11.
//  Copyright 2011 KDLab. All rights reserved.
//

#import "LinkedList.h"


@implementation LinkedList
@synthesize current;
@synthesize head;
@synthesize tail;

- (id)initWithHead:(NSObject *)value {
    if (self = [super init]) {
        self.head = [[[ListNode alloc] initWithObject:value] autorelease];
        self.current = head;
    }
    return self;
}

- (void)addToFront:(NSObject *)value {
    ListNode *node = [[[ListNode alloc] initWithObject:value] autorelease];
    // new element becomes the head node
    node.next = head;
    head.pre = node;
    self.head = node;
}

- (void)addToEnd:(NSObject *)value {
    
}

- (void)insertObject:(NSObject *)object atIndex:(NSInteger)index {
    ListNode *currentNode = self.head;
    ListNode *previousNode = nil;
    ListNode *nextNode = nil;
    
    for (int i = 1; i <= index; i++) {
        currentNode = currentNode.next;
        if (i == index - 1) {
            previousNode = currentNode;
        } else if (i == index) {
            nextNode = currentNode;
        }
    }
    
    ListNode *newNode = [[[ListNode alloc] initWithObject:object] autorelease];
    if (!previousNode) {
        self.head = newNode;
    } else {
        previousNode.next = newNode;
        newNode.pre = previousNode;
        
        nextNode.pre = newNode;
        newNode.next = nextNode;
    }

}

- (NSObject *)first {
    return self.head.value;
}

- (NSObject *)currentValue {
    return self.current.value;
}

- (NSObject *)next {
    self.current = self.current.next;
    return self.current.value;
}

- (NSObject *)previous {
    self.current = self.current.pre;
    return self.current.value;
}

- (NSObject *)objectAtIndex:(NSInteger)index {
    ListNode *currentNode = self.head;
    for (int i = 1; i < index; i++) {
        currentNode = currentNode.next;
    }
    return currentNode.value;
}

- (NSUInteger)count {
    if (!self.head) {
        return 0;
    }
    
    ListNode *currentNode = self.head;
    int i = 1;
    while (currentNode.next) {
        currentNode = currentNode.next;
        i++;
    }
    return i;
}

- (BOOL)removeCurrent {
    if (self.current == self.head) {
        self.head = self.current.next;
        
        self.current = self.head;
        return YES;
    }
    
    ListNode *preNode = self.current.pre;
    ListNode *nextNode = self.current.next;
    preNode.next = nextNode;
    nextNode.pre = preNode;
    self.current = preNode;
    return YES;
}

- (BOOL)removeObjectAtIndex:(NSInteger)index {
    ListNode *currentNode = self.head;
    ListNode *previousNode = nil;
    ListNode *nextNode = nil;
    
    for (int i = 1; i <= index; i++) {
        currentNode = currentNode.next;
        if (i == index - 1) {
            previousNode = currentNode;
        } else if (i == index) {
            nextNode = currentNode;
        }
    }
    
    previousNode.next = nextNode;
    nextNode.pre = previousNode;
    return YES;
}

- (void) dealloc {
    [current release];
    [head release];
    [super dealloc];
}

@end