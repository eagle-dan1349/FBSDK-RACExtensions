//
//  FBSDKAccessToken+RACExtensions.h
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import <FBSDKCoreKit/FBSDKAccessToken.h>

@interface FBSDKAccessToken (RACExtensions)

/**
 *  Convince around +refreshCurrentAccessToken:
 *  Creates signal that will refresh current token upon subscription
 *  @return A cold refresh signal
 */
+ (RACSignal*) rac_RefreshCurrentAccessToken;

@end
