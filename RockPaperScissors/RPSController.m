//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Michael Miles on 8/27/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void)throwDown:(Move)playersMove {
    
    //Where the RPSTurn class generates the opponent's move
    RPSTurn *playersTurn = [[RPSTurn alloc]initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
}

@end
