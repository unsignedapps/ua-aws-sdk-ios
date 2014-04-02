//
//  UAEC2CancelledSpotInstanceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CancelledSpotInstanceRequest.h"

@implementation UAEC2CancelledSpotInstanceRequest

@synthesize spotInstanceRequestID=_spotInstanceRequestID, state=_state;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"spotInstanceRequestID": @"ec2:spotInstanceRequestId",
        @"state": @"ec2:state"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2CancelledSpotInstanceRequestStateActive), @(UAEC2CancelledSpotInstanceRequestStateOpen), @(UAEC2CancelledSpotInstanceRequestStateClosed), @(UAEC2CancelledSpotInstanceRequestStateCancelled), @(UAEC2CancelledSpotInstanceRequestStateFailed) ]
                                               stringValues:@[ @"active", @"open", @"closed", @"cancelled", @"failed" ]
                                               unknownValue:@(UAEC2CancelledSpotInstanceRequestStateUnknown)];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2CancelledSpotInstanceRequestStateActive), @(UAEC2CancelledSpotInstanceRequestStateOpen), @(UAEC2CancelledSpotInstanceRequestStateClosed), @(UAEC2CancelledSpotInstanceRequestStateCancelled), @(UAEC2CancelledSpotInstanceRequestStateFailed) ]
                                               stringValues:@[ @"active", @"open", @"closed", @"cancelled", @"failed" ]
                                               unknownValue:@(UAEC2CancelledSpotInstanceRequestStateUnknown)];
}

@end
