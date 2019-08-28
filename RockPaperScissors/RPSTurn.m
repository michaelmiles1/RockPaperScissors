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

-(Move)generateMove {
    return Rock;
}

-(BOOL)defeats:(RPSTurn*)turn {
    return false;
}

@end
