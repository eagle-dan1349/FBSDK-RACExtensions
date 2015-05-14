//
//  FBSDKGraphRequest+RACExtensions.m
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import "FBSDKGraphRequest+RACExtensions.h"

@implementation FBSDKGraphRequest (RACExtensions)

- (RACSignal*) rac_start
{
    RACSignal* requestSignal =
    [RACSignal createSignal:^RACDisposable *(id<RACSubscriber> subscriber)
     {
         FBSDKGraphRequestConnection* connection =
         [self startWithCompletionHandler:^(FBSDKGraphRequestConnection* connection,
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
         
         return
         [RACDisposable disposableWithBlock:^
          {
              [connection cancel];
          }];
     }];
    
    return requestSignal;
}

@end
