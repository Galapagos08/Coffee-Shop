//
//  EspressoMachine.m
//  Coffee shop
//
//  Created by Dan Esrey on 2016/23/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "EspressoMachine.h"

@implementation EspressoMachine

- (void) makeEspresso {
    
    BOOL hasWater = NO;
    BOOL hasBeans = NO;
    BOOL waterIsHot = NO;
    
    if(hasWater && hasBeans && waterIsHot) {
        NSLog(@"The espresso machine is ready to go.");
    } else {
        if (!hasWater) {
            [self addWater];
            [self heatWater];
        }  if (!hasBeans) {
            [self addBeans];
        }  if (hasWater && !waterIsHot) {
            [self heatWater];
        }
        NSLog(@"The espresso machine has finished making coffee.");
    }
}

- (void) heatWater {
    NSLog(@"I heated the water in the espresso machine.");
}

- (void) addBeans {
    NSLog(@"I added the beans to the espresso machine.");
}

- (void) addWater {
    NSLog(@"I added water to the espresso machine.");
}


@end

