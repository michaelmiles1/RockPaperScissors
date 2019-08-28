//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Michael Miles on 8/27/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

-(void)throwDown:(Move)move;

@end

NS_ASSUME_NONNULL_END
