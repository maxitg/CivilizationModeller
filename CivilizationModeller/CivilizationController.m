//
//  CivilizationController.m
//  CivilizationModeller
//
//  Created by Maxim Piskunov on 05.07.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CivilizationController.h"

@interface CivilizationController ()

@property (nonatomic, strong) NSMutableDictionary* nodes;

@end

@implementation CivilizationController

@synthesize nodes = _nodes;

- (NSMutableDictionary *)computerList
{
    if (!_nodes) {
        _nodes = [[NSMutableDictionary alloc] init];
    }
    return _nodes;
}

- (CivilizationNode *)addNode
{
    NSMutableArray* links = [[NSMutableArray alloc] init];
    CivilizationNode* newNode = [[CivilizationNode alloc] init];
    [self.nodes setObject:links forKey:newNode];
    return newNode;
}

- (void)removeNode:(CivilizationNode *)aNode
{
    for (CivilizationNode* currentNode in self.nodes) {
        [[self.nodes objectForKey:currentNode] removeObjectIdenticalTo:aNode];
    }
    [self.nodes removeObjectForKey:aNode];
}

@end
