//
//  AutomobileFactoryPrinter.m
//  ModularizationSampleApp
//
//  Created by Bill Gestrich on 6/29/23.
//

@import Automobile;

#import "AutomobileFactoryPrinter.h"
#import "AutomobileFactory.h"

@implementation AutomobileFactoryPrinter

- (void)printSUVs {
    AutomobileFactory *factory = [[AutomobileFactory alloc] init];
    SUV *suv = [factory getSUV];
    NSLog(@"%@", [suv suvDescription]);
}

- (void)printHybrids {
    AutomobileFactory *factory = [[AutomobileFactory alloc] init];
    Hybrid *hybrid = [factory getHybrid];
    NSLog(@"%@", [hybrid hybridDescription]);
}

@end
