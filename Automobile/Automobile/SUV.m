//
//  SUV.m
//  Automobile
//
//  Created by Bill Gestrich on 6/29/23.
//

@import NetworkKitSwift;
@import NetworkKitObjc;

#import "SUV.h"

@implementation SUV

-(NSString *)suvDescription {
    return @"I am an SUV";
}

-(BOOL)isConnectedObjc {
    NetworkStateObjc *networkState = [[NetworkStateObjc alloc] init];
    return [networkState isConnected];
}

-(BOOL)isConnectedSwift {
    
    NetworkStateSwift *networkState = [[NetworkStateSwift alloc] init];
    return [networkState isConnected];
}

@end
