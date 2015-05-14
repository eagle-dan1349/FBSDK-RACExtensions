# FBSDK-RACExtensions

[![Version](https://img.shields.io/cocoapods/v/FBSDK-RACExtensions.svg?style=flat)](http://cocoapods.org/pods/FBSDK-RACExtensions)
[![License](https://img.shields.io/cocoapods/l/FBSDK-RACExtensions.svg?style=flat)](http://cocoapods.org/pods/FBSDK-RACExtensions)
[![Platform](https://img.shields.io/cocoapods/p/FBSDK-RACExtensions.svg?style=flat)](http://cocoapods.org/pods/FBSDK-RACExtensions)
[![License](https://img.shields.io/cocoapods/l/Facebook-iOS-SDK-RACExtensions.svg?style=flat)](http://cocoadocs.org/docsets/FBSDK-RACExtensions)
[![Platform](https://img.shields.io/cocoapods/p/Facebook-iOS-SDK-RACExtensions.svg?style=flat)](http://cocoadocs.org/docsets/FBSDK-RACExtensions)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
FBSDK-RACExtensions relay on:
ReactiveCocoa v 2.5,
FBSDKCoreKit v 4.1.0,
FBSDKLoginKit v 4.1.0 and
FBSDKShareKit v 4.1.0

## Getting started

RACExtesions for Facebook iOS SDK provide convince around block-based methods of SDK. Returned signals are cold (unles otherwise is stated) and start automatically upos subscription. Result of requests, authorisation, etc are sent back to you the subscriber.

```obj-c
	FBSDKLoginManager* manager =
    [[FBSDKLoginManager alloc] init];
    
    [[manager rac_logInWithReadPermissions:@[
                                             @"public_profile",
                                             @"email",
                                             @"user_photos",
                                             @"user_birthday"
                                             ]]
     subscribeNext:^(FBSDKLoginManagerLoginResult* result)
     {
         //You got your login result!
     }
     error:^(NSError* error)
     {
         //Or something went wrong...
     }];
```

## Installation

FBSDK-RACExtensions is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FBSDK-RACExtensions"
```

If you need only log in functionality, you may use this:

```ruby
pod "FBSDK-RACExtensions/FBSDKLoginKit-RACExtensions"
```

## Author

eagle-dan1349, eagle.dan.1349@gmail.com

## License

FBSDK-RACExtensions is available under the MIT license. See the LICENSE file for more info.

See Facebook SDK lincense for it's usage.

Pull requests are welcome!