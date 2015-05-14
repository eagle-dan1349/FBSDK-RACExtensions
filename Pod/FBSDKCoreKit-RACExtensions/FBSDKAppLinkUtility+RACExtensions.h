//
//  FBSDKAppLinkUtility+RACExtensions.h
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import <ReactiveCocoa.h>
#import <FBSDKAppLinkUtility.h>

@interface FBSDKAppLinkUtility (RACExtensions)

/**
 *  Convince around +fetchDeferredAppLink:
 *  Creates signal that fetches deffered app link upon subscription
 *  @return A cold fetch signal
 */
+ (RACSignal*) rac_FetchDeferredAppLink;

@end
