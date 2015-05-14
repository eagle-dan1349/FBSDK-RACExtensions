//
//  FBSDKAppLinkUtility+RACExtensions.m
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import "FBSDKAppLinkUtility+RACExtensions.h"

@implementation FBSDKAppLinkUtility (RACExtensions)

+ (RACSignal*) rac_FetchDeferredAppLink
{
    RACSignal* fetchSignal =
    [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber)
     {
         [self fetchDeferredAppLink:^(NSURL* url, NSError* error)
          {
              if (!error)
              {
                  [subscriber sendNext:url];
                  [subscriber sendCompleted];
              }
              else
              {
                  [subscriber sendError:error];
              }
          }];
         
         return nil;
     }];
    
    return fetchSignal;
}

@end
