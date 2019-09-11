//
//  main.m
//  RockPaperScissors
//
//  Created by Michael Miles on 8/13/19.
//  Copyright © 2019 Michael Miles. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Initialize RPSController
        RPSController *gameController = [[RPSController alloc] init];
        
        [gameController throwDown:Rock];
    }
    return 0;
}
