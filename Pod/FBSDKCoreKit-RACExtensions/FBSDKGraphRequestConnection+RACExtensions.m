//
//  FBSDKGraphRequestConnection+RACExtensions.m
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import "FBSDKGraphRequestConnection+RACExtensions.h"

@implementation FBSDKGraphRequestConnection (RACExtensions)

- (RACSignal*) rac_addRequest:(FBSDKGraphRequest*) request
{
    RACSignal* requestSignal =
    [RACSignal createSignal:^RACDisposable* (id<RACSubscriber> subscriber)
     {
         [self addRequest:request
        completionHandler:^(FBSDKGraphRequestConnection* connection,
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
    
    return requestSignal;
}

- (RACSignal*) rac_addRequest:(FBSDKGraphRequest*) request
               batchEntryName:(NSString*) name
{
    RACSignal* requestSignal =
    [RACSignal createSignal:^RACDisposable* (id<RACSubscriber> subscriber)
     {
         [self addRequest:request
        completionHandler:^(FBSDKGraphRequestConnection* connection,
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
          }
           batchEntryName:name];
         
         return nil;
     }];
    
    return requestSignal;
}

- (RACSignal*) rac_addRequest:(FBSDKGraphRequest*) request
              batchParameters:(NSDictionary*) batchParameters
{
    RACSignal* requestSignal =
    [RACSignal createSignal:^RACDisposable* (id<RACSubscriber> subscriber)
     {
         [self addRequest:request
        completionHandler:^(FBSDKGraphRequestConnection* connection,
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
          }
          batchParameters:batchParameters];
         
         return nil;
     }];
    
    return requestSignal;
}

@end
