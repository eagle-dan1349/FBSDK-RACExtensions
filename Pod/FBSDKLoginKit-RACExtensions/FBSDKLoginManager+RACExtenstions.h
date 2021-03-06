//
//  FBSDKLoginManager+RACExtenstions.h
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface FBSDKLoginManager (RACExtenstions)

/**
 *  A convince around -logInWithReadPermissions:handler:
 *  Creates signal that will initiate login sequence upon subscription
 *  @return A cold login signal
 */
- (RACSignal*) rac_logInWithReadPermissions:(NSArray*) permissions
                         fromViewController:(UIViewController*) viewController;

/**
 *  A convince around -logInWithPublishPermissions:handler:
 *  Creates signal that will initiate login sequence upon subscription
 *  @return A cold login signal
 */
- (RACSignal*) rac_logInWithPublishPermissions:(NSArray*) permissions
                            fromViewController:(UIViewController*) viewController;

/**
 *  A convince around +renewSystemCredentials:
 *  Creates signal that renews system credentials upon subscription
 *  @return A cold renew signal
 */
+ (RACSignal*) rac_renewSystemCredentials;

@end
