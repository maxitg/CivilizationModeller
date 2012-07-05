//
//  CivilizationNode.m
//  CivilizationModeller
//
//  Created by Maxim Piskunov on 05.07.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CivilizationNode.h"

@interface CivilizationNode ()

@property (nonatomic, strong) NSMutableSet* links;

@end

@implementation CivilizationNode

@synthesize links = _links;

- (NSMutableSet*) links
{
    if (!_links) {
        _links = [[NSMutableSet alloc] init];
    }
    return _links;
}

- (void) linkTo:(CivilizationNode *)Node
{
    [self.links addObject:Node];
}

- (void) unlinkFrom:(CivilizationNode *)Node
{
    [self.links removeObject:Node];
}

@end
