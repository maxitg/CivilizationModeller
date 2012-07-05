//
//  CivilizationController.h
//  CivilizationModeller
//
//  Created by Maxim Piskunov on 05.07.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CivilizationNode.h"

@interface CivilizationController : NSObject

- (CivilizationNode*) addNode;
- (void) removeNode:(CivilizationNode*)aNode;

@end
