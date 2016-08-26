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
            if ([self.delegate respondsToSelector:@selector(espressoMachineWaterHasBecomeHot:)]) {
                [self.delegate espressoMachineWaterHasBecomeHot:self];
            }
        }  if (!hasBeans) {
            [self addBeans];
        }  if (hasWater && !waterIsHot) {
            [self heatWater];
        }
        [self.delegate espressoMachineDidFinishMakingEspresso:self];
    }
}

- (void) heatWater {
    self.waterIsHot = YES;
    NSLog(@"I heated the water in the espresso machine.");
    
}

- (void) addBeans {
    self.hasBeans = YES;
    NSLog(@"I added the beans to the espresso machine.");
}

- (void) addWater {
    self.hasWater = YES;
    NSLog(@"I added water to the espresso machine.");
}


@end

