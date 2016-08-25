//
//  Barista.m
//  Coffee shop
//
//  Created by Dan Esrey on 2016/23/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import "Barista.h"
#import "EspressoMachine.h"

@implementation Barista


- (void)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine {
    NSLog(@"Here is your espresso! Thank you and have a nice day!");
}

- (void)espressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine {

}


@end
