//
//  AutomobileFactory.m
//  ModularizationSampleApp
//
//  Created by Bill Gestrich on 6/29/23.
//

@import Automobile;
@import NetworkKitObjc;
@import NetworkKitSwift;

#import "AutomobileFactory.h"

@implementation AutomobileFactory


-(NetworkStateObjc *)getObjcNetworkState {
    return [[NetworkStateObjc alloc] init];
}

-(NetworkStateSwift *)getSwiftNetworkState {
    return [[NetworkStateSwift alloc] init];
}

-(SUV *) getSUV {
    return [[SUV alloc] init];
}

-(Hybrid *)getHybrid {
    return [[Hybrid alloc] init];
}



@end
