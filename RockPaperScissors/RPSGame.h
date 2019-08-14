//
//  RPSGame.h
//  RockPaperScissors
//
//  Created by Michael Miles on 8/13/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn secondTurn: (RPSTurn*)computerTurn;

@end
