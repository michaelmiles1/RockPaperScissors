//
//  RPSGame.m
//  RockPaperScissors
//
//  Created by Michael Miles on 8/13/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

#import "RPSGame.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn secondTurn: (RPSTurn*)computerTurn {
    self = [super init];
    
    if(self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }
    
    return self;
}

@end
