//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Michael Miles on 8/13/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype)initWithMove:(Move)move {
    self = [super init];
    
    if (self) {
        _move = move;
    }
    
    return self;
}

-(instancetype)init {
    self = [super init];
    
    if (self) {
        _move = [self generateMove];
    }
    
    return self;
}

-(Move)generateMove {
    NSUInteger randomNumber = arc4random_uniform(3);
    
    switch (randomNumber) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
            break;
        case 2:
            return Scissors;
            break;
        default:
            return Invalid;
            break;
    }
    
    return Rock;
}

-(BOOL)defeats:(RPSTurn*)opponent {
    if ((self.move == Paper && opponent.move == Rock) ||
        (self.move == Scissors && opponent.move == Paper) ||
        (self.move == Rock && opponent.move == Scissors))
    {
        return true;
    } else {
        return false;
    }
}

-(NSString*)description {
    if (self.move == Paper) {
        return @"Paper";
    } else if (self.move == Rock) {
        return @"Rock";
    } else if (self.move == Scissors) {
        return @"Scissors";
    } else {
        return @"Description method failed";
    }
}

@end
