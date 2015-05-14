//
//  FBSDKLoginManager+RACExtenstions.m
//  Pods
//
//  Created by Daniil Orlov on 5/14/15.
//
//

#import "FBSDKLoginManager+RACExtenstions.h"

@implementation FBSDKLoginManager (RACExtenstions)

- (RACSignal*) rac_logInWithReadPermissions:(NSArray*) permissions
{
    RACSignal* logInSignal =
    [RACSignal createSignal:^RACDisposable* (id<RACSubscriber> subscriber)
     {
         [self logInWithReadPermissions:permissions
                                handler:^(FBSDKLoginManagerLoginResult* result, NSError* error)
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
    
    return logInSignal;
}

- (RACSignal*) rac_logInWithPublishPermissions:(NSArray*) permissions
{
    RACSignal* logInSignal =
    [RACSignal createSignal:^RACDisposable* (id<RACSubscriber> subscriber)
     {
         [self logInWithPublishPermissions:permissions
                                   handler:^(FBSDKLoginManagerLoginResult* result, NSError* error)
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
    
    return logInSignal;
}

+ (RACSignal*) rac_renewSystemCredentials
{
    RACSignal* renewSignal =
    [RACSignal createSignal:^RACDisposable* (id<RACSubscriber> subscriber)
     {
         [self renewSystemCredentials:^(ACAccountCredentialRenewResult result,
                                        NSError* error)
          {
              if (!error)
              {
                  [subscriber sendNext:@(result)];
                  [subscriber sendCompleted];
              }
              else
              {
                  [subscriber sendError:error];
              }
          }];
         
         return nil;
     }];
    
    return renewSignal;
}

@end
