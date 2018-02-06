//
//  LHArray.m
//  LHMemoryCache
//
//  Created by feeyo on 2018/2/2.
//  Copyright © 2018年 lihuan. All rights reserved.
//

#import "LHArray.h"


@interface LHArrayNode:NSObject{
    @package
    id _data;
    LHArrayNode *_prev;
    LHArrayNode *_next;
}
@end

@implementation LHArrayNode

@end


@interface LHArray()
@property  (nonatomic, strong)  LHArrayNode  *headerNode;
@end

@implementation LHArray
- (instancetype)init
{
    self = [super init];
    if (self) {
    _headerNode =  [self newNode];
    }
    return self;
}

#pragma mark-- create node
- (LHArrayNode *)newNode
{
    LHArrayNode *node = [LHArrayNode new];
    node -> _next = nil;
    node -> _prev = nil;
    node -> _data = nil;
    return node;
}

#pragma mark-- free node
- (void)releaseNode:(LHArrayNode *)node
{
    node -> _data = nil;
    node -> _prev = nil;
    node -> _next = nil;
}

- (void)addObject:(id)object
{
    if (object) {
        LHArrayNode *node = [self newNode];
        node -> _data = object;
        
        LHArrayNode *pNode = _headerNode;
        while (pNode && pNode->_next) {
            pNode = pNode -> _next;
        }
        pNode ->_next = node;
        node ->_prev = pNode;
        _count ++;
    }
}

@end
