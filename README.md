# AWS SDK for iOS (Unsigned Apps Edition)


This is a port of the [AWS iOS SDK for PHP](https://github.com/aws/aws-sdk-php) to Objective-C. It is designed for increased coverage of the official AWS SDK for iOS (eventually), and for the improved usage of queuing and blocks for handling responses.

*Note: This is pre-release software and as such is subject to changes that may break backwards compatibility. Particularly, not all enums have been set for EC2-related objects yet.*

## Advantages

The Unsigned Apps Edition has the following advantages over the official AWS SDK for iOS:

* Fully asynchronous out of the box.
* Uses completion blocks for responses and errors instead of the delegate pattern.
* **Strongly Typed** Enums are used where appropriate instead of strings.
* The entire model is made out of a [Mantle](https://github.com/MantleFramework/Mantle/) derivative, and so is NSCopying and NSCoding compatible and can be easily serialised to/from JSON.
* Uses an adaption of [KissXML](https://github.com/robbiehanson/KissXML) and [MantleXMLAdapter](https://github.com/mbaranowski/MantleXMLAdapter) and so can be easily serialised to/from XML.
* Built around NSOperationQueue and NSURLSessions so you can use familiar tools to control your communication with AWS.

## AWS Coverage

At the moment, we support the following AWS Services:

* AutoScaling
* CloudWatch
* EC2
* ELB
* IAM (not supported by the official SDK)
* SNS
* VPC (not supported by the official SDK)

Our target is the to support the full offering, or at least as much as the [AWS SDK for PHP]() supports, as all code is generated from their service definitions.

## Documentation

Documentation is sparse at the moment, but will be fleshed out in time (as in, once we can figure out an easy way of automating it). In the meantime you can use the official docs for the AWS APIs.

For example, documentation for the usage of `UAEC2DescribeInstances` can be found at the corresponding EC2 API page for [DescribeInstances](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeInstances.html). Use the symbol browser or your autocomplete for some slight naming differences.

## Installation

*This SDK presently supports iOS 7.0 and above only!*

You can either either install using [CocoaPods](http://cocoapods.org) (search for UAAWSSDK), or by cloning this repo into your own work.

It is recommended that you only `#import` the service that you're looking to use, and not the whole SDK.

```objc
#import <UAAWSSDK/UAAutoScaling.h>
#import <UAAWSSDK/UACloudWatch.h>
#import <UAAWSSDK/UAEC2.h>
#import <UAAWSSDK/UAELB.h>
#import <UAAWSSDK/UAIAM.h>
#import <UAAWSSDK/UASNS.h>
```

you can of course import the lot if you like:

```objc
#import <UAAWSSDK/UAAWSSDK.h>
```

When installing via CocoaPods, you can use subspecs to limit the installation to specific services:

```ruby
platform :ios, '7.0'

pod 'UAAWSSDK/EC2'
pod 'UAAWSSDK/CW'
```

## Authentication and Region selection

As always, you will need to know your Access Key and Secret Key to use this SDK. Likewise you need to select a region to target your requests to (otherwise we default to US-East-1). You can either supply them on a per-request basis:

```objc
UAEC2DescribeInstancesRequest *request = [[UAEC2DescribeInstancesRequest alloc] init];
[request setUA_Credentials:[[UAAWSCredentials alloc] initWithAccessKey:@"xxx" secretKey:@"yyy"]];
[request setUA_Region:UAAWSRegionAPSoutheast2];
```

or, create a small authentication delegate and provide that to the UAAWSOperationQueue:

in *MyAuthProvider.h*:
```objc
#import <UAAWSSDK/UAAWSOperationAuthenticationDelegate.h>

@interface MyAuthProvider : NSObject <UAAWSOperationAuthenticationDelegate>

@end
```

and *MyAuthProvider.m*:
```objc
#import "MyAuthProvider.h"

@implementation MyAuthProvider

- (UAAWSCredentials *)credentialsForRequest:(UAAWSRequest *)request
{
    return [[UAAWSCredentials alloc] initWithAccessKey:@"xxx" secretKey:@"yyy"];
}

- (UAAWSRegion)regionForRequest:(UAAWSRequest *)request
{
    return UAAWSRegionAPNortheast1;
}

@end
```

then in your code:

```objc
[[UAAWSOperationQueue sharedInstance] setDelegate:[[MyAuthProvider alloc] init]];
```

The `UAAWSOperationQueue` will strongly retain its Authentication Delegate, so you don't need to.

## Executing Requests

To execute your requests against the AWS APIs, you need only create, and then `invoke` them:

```objc
UAEC2DescribeInstancesRequest *request = [[UAEC2DescribeInstancesRequest alloc] init];
[request invoke];
```

Of course, that will discard the output and you won't know what happened. The preferred way is to invoke it with an owner and a completion block:

```objc
UAEC2DescribeInstancesRequest *request = [[UAEC2DescribeInstancesRequest alloc] init];
[request invokeWithOwner:self completionBlock:^(UAEC2DescribeInstancesResponse *response, NSError *error) {
    if (error != nil) {
        // your error handling here.
    }
    else {
        // success code.
    }
}];
```

Everything is strongly typed, so the properties on the response object will be exactly what the API returns. See the note on ownership below for info on the owner argument.

Of course, there's one final way to execute requests if you want all of the control. If you inspect each request object, such as `UAEC2DescribeInstancesRequest`, the inheritance looks something like: `UAEC2DescribeInstancesRequest` > `UAEC2Request` > `UAAWSRequest` > `NSOperation`.

All requests will extend `NSOperation`, so you can add them directly to the singleton queue that this SDK provides:

```objc
[[UAAWSOperationQueue sharedInstance] addRequest:request];
```

Or to your own `NSOperationQueue`, if you're so inclined. *Note: while this is theoretically possible, it is mostly untested. The `UAAWSRequest` class does depend on the `UAAWSOperationQueue` instance for some functionality.*

## Request Ownership

Some requests against the AWS APIs can be long lived, or take time to execute. We recommend for each request that an owner object be specified via `-setUA_Owner:` or `-invokeWithOwner:completionBlock:`.

A weak reference to the request's owner will be maintained and allow you to cancel operations that are no longer needed:

```objc
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];

    [[UAAWSOperationQueue sharedInstance] cancelAllRequestsForOwner:self];
}
```

This is particularly effective at cancelling active requests when your View Controller is no longer going to be around to use them, or in `-dealloc` of many other objects.

## Waiters

One of the features that is great in the AWS SDK for PHP is the concept of waiters. In this SDK, a waiter is a request that will wait for a specific condition to occur before informing your completion block.

Not all changes you make in AWS via the APIs occur instantly. For instance, it takes time to stop an EC2 Instance, or to create an EC2 Image of an instance. In this SDK, you can use  `-waitWithOwner:untilValueAtKeyPath:isInArray:completionBlock:` to let the SDK poll the API for you until the conditions are met. *Note: waiting requests will not block others requests, a copy is made and given to a NSTimer on the main thread to be inserted back into the queue at the configured interval.*

For example, in respond to a `UAEC2StartInstancesRequest` request, you could use a `UAEC2DescribeInstancesRequest` to wait until that instance has reached a *Running* state:
```objc
UAEC2DescribeInstancesRequest *request = [[UAEC2DescribeInstancesRequest alloc] init];
[request addInstanceID:@"i-12345678"];
[request waitWithOwner:self
   untilValueAtKeyPath:@"reservations.@unionOfObjects.instances.@unionOfObjects.state"
             isInArray:@[ @(UAEC2InstanceStateRunning) ]
       completionBlock:^(UAEC2DescribeInstancesResponse *response, NSError *error)
{
    if (error != nil) {
        // do something with the error
    }
    else {
        // do something with the instance
    }
}];
```

The request will apply the specified keyPath to the `UAEC2DescribeInstancesResponse` object and check the result against the supplied NSArray. If any of the values returned by the keyPath is found in the NSArray, or if an error occurs at any time, it will call the completionBlock with the current response.

You can also set the `UA_ShouldContinueWaiting` property on the request directly and provide your own block for determining if a request should wait or not (return YES to continue waiting, NO to finish up).

## Request Properties

There are many properties on `UAAWSRequest` that you can set in your requests:

### UA_Owner

The object that has "ownership" over this request. It can also be set via `-invokeWithOwner:completionBlock:` or `-waitWithOwner:untilValueAtKeyPath:isInArray:completionBlock:`. A weak reference to the object is maintained.

You can use the owners to cancel specific batches of requests with `[[UAAWSOperationQueue sharedInstance] cancelAllRequestsWithOwner:obj]`. See the section on **Request Ownership** for more.

### UA_Credentials

The credentials used for signing the request to the AWS APIs. Set this to an instance of `UAAWSCredentials` to set credentials for a specific request.

If the `UA_Credentials` is nil, the `UAAWSOperationQueue` will ask its `delegate` for the credentials when it attempts to connect. The delegate should implement `<UAAWSOperationAuthenticationDelegate>`.

### UA_Region

The region you want to connect to for this request. Set this to one of the UAAWSRegion enum values.

If `UA_Region` is set to `UAAWSRegionUnknown`, the `UAAWSOperationsQueue` will ask its `delegate` for the region when it attempts to connect. The delegate should implement `<UAAWSOperationAuthenticationDelegate>`.

*Note: some services (such as IAM) operate globally and not in specific regions. For these the SDK will ignore the UA_Region value and default back to `UAAWSRegionUSEast1` for connection.*

### UA_RequestCompletionBlock

The block to be executed when the operation completes. This is typically set via `-invokeWithOwner:completionBlock:` or `-waitWithOwner:untilValueAtKeyPath:isInArray:completionBlock:` but you may want to set it explicitly on the request if your code will add the request to an NSOperationQueue directly.

The `UAAWSOperationCompletionBlock` (and its kin) has two arguments: a `UAAWSResponse` subclass (`response), and an NSError (`error`). In the event of a successful request, the `response` argument will be non-nil, and the `error` nil. If an error occurred `response` will be nil and the `error` non-nil.

The block should not return anything.

### UA_ShouldContinueWaiting

The block to be used to determine if this request should continue to wait or not.

The `UAAWSOperationQueueShouldContinueWaitingBlock` (and its kin) has two arguments: a `UAAWSResponse` subclass (`response`), and an NSError (`error`). In the event of a successful request, the `response` argument will be non-nil, and the `error` nil. If an error occurred `response` will be nil and the `error` non-nil.

The block should return `YES` if the request is to continue waiting, `NO` otherwise.

## Support

The AWS SDK for iOS (Unsigned Apps Edition) is provided open source with no warranty and no guarantee of support. Best efforts are made to address [issues](https://github.com/unsignedapps/ua-aws-sdk-ios/issues) raised on GitHub.

You can email the author at bok@&lt;github username&gt;.com. Where &lt;github username&gt; should hopefully be apparent from the URL to this repo (https://github.com/unsignedapps/ua-aws-sdk-ios).

## Contributions

All contributions are welcome and greatly appreciated. It is worth noting that 99% of the SDK is code generated, and that generator is not yet part of this repository. If you find something that should be fixed it may be easier for me to fix the generator and re-generate, at least until the generator is published on GitHub also.

## License

The AWS SDK for iOS is released under a MIT License. See the `LICENSE` file for more.
