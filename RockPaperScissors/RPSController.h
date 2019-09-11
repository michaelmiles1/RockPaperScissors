//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Michael Miles on 8/27/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void)throwDown:(Move)move;
-(NSString*)messageForGame:(RPSGame*)game;

@end

NS_ASSUME_NONNULL_END
