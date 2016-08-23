//
//  main.m
//  Coffee shop
//
//  Created by Dan Esrey on 2016/23/08.
//  Copyright © 2016 Dan Esrey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EspressoMachine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EspressoMachine *espressoMachine = [[EspressoMachine alloc] init];
        [espressoMachine makeEspresso];
    }
    return 0;
}
