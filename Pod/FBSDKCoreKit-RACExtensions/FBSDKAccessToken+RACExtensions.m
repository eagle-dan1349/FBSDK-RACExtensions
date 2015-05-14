//
//  FBSDKAccessToken+RACExtensions.m
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import "FBSDKAccessToken+RACExtensions.h"

@implementation FBSDKAccessToken (RACExtensions)

+ (RACSignal*) rac_RefreshCurrentAccessToken
{
    RACSignal* refreshSignal =
    [RACSignal createSignal:^RACDisposable* (id<RACSubscriber> subscriber)
     {
         [self refreshCurrentAccessToken:^(FBSDKGraphRequestConnection* connection,
                                           id result,
                                           NSError* error)
          {
              if (!error)
              {
                  [subscriber sendNext:result];
                  [subscriber sendCompleted];
              }
              else
              {
                  [subscriber sendError:error];
              }
          }];
         
         return nil;
     }];
    
    return refreshSignal;
}

@end
