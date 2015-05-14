//
//  FBSDKGraphRequest+RACExtensions.h
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import <ReactiveCocoa.h>
#import <FBSDKGraphRequest.h>

@interface FBSDKGraphRequest (RACExtensions)

/**
 *  A convince around -startWithCompletionHandler:
 *  Creates signal that starts request upon subscription
 *  @rerutn A cold request siignal
 */
- (RACSignal*) rac_start;

@end
