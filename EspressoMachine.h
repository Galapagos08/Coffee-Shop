//
//  EspressoMachine.h
//  Coffee shop
//
//  Created by Dan Esrey on 2016/23/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EspressoMachineDelegate;

@interface EspressoMachine : NSObject
@property (nonatomic, weak) id<EspressoMachineDelegate> delegate;
@property (nonatomic) BOOL hasWater;
@property (nonatomic) BOOL hasBeans;
@property (nonatomic) BOOL waterIsHot;
- (void) makeEspresso;
- (void) heatWater;
- (void) addBeans;
- (void) addWater;

@end

@protocol EspressoMachineDelegate <NSObject>
- (BOOL)espressoMachineDidFinishMakingEspresso:(EspressoMachine *)espressoMachine;

@optional
- (BOOL)espressoMachineWaterHasBecomeHot:(EspressoMachine *)espressoMachine;




@end
