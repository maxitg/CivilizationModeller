//
//  CivilizationNode.h
//  CivilizationModeller
//
//  Created by Maxim Piskunov on 05.07.2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CivilizationNode : NSObject

- (void) linkTo:(CivilizationNode*)Node;
- (void) unlinkFrom:(CivilizationNode*)Node;

@end
