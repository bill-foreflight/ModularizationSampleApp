//
//  AutomobileFactory.h
//  ModularizationSampleApp
//
//  Created by Bill Gestrich on 6/29/23.
//

#import <Foundation/Foundation.h>

@class SUV;
@class Hybrid;
@class NetworkStateObjc;
@class NetworkStateSwift;

NS_ASSUME_NONNULL_BEGIN

@interface AutomobileFactory : NSObject

-(SUV *)getSUV;
-(Hybrid *)getHybrid;

-(NetworkStateObjc *)getObjcNetworkState;
-(NetworkStateSwift *)getSwiftNetworkState;

@end

NS_ASSUME_NONNULL_END
