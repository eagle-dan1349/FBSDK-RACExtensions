//
//  FBSDKGraphRequestConnection+RACExtensions.h
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import <ReactiveCocoa/ReactiveCocoa.h>
#import <FBSDKCoreKit/FBSDKGraphRequestConnection.h>

@interface FBSDKGraphRequestConnection (RACExtensions)

/**
 *  A convince around -addRequest:completionHandler:
 *
 *  @rerurn A cold request signal
 */
- (RACSignal*) rac_addRequest:(FBSDKGraphRequest*) request;

/**
 *  A convince around -addRequest:completionHandler:batchEntryName:
 *
 *  @return A cold request signal
 */
- (RACSignal*) rac_addRequest:(FBSDKGraphRequest*) request
               batchEntryName:(NSString*) name;

/**
 *  A convince around -addRequest:completionHandler:batchParameters:
 *
 * @return A cold request signal
 */
- (RACSignal*) rac_addRequest:(FBSDKGraphRequest*) request
              batchParameters:(NSDictionary*) batchParameters;

@end
