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

-(NSString*)resultsString:(RPSGame*)game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You win!" : @"You lose.";
}

-(NSString*)messageForGame:(RPSGame*)game {
    if (game.firstTurn.move == game.secondTurn.move) {
        return @"It's a tie.";
    } else {
        NSString *winnerString = [[game winner] description];
        NSString *loserString = [[game loser] description];
        NSString *resultString = [self resultsString:game];
        
        NSString *wholeString = [NSString stringWithFormat:@"%@ defeats %@. %@", winnerString, loserString, resultString];
        
        return wholeString;
    }
    
}

@end
