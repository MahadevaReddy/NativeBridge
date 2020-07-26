//
//  HelloWorld.m
//  NativeBridge
//
//  Created by Mahadeva Reddy Markiri on 26/07/20.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>


@interface RCT_EXTERN_MODULE(HelloWorld, NSObject)
RCT_EXTERN_METHOD(ShowMessage:(NSString *)message duration:(double *)duration)
@end
