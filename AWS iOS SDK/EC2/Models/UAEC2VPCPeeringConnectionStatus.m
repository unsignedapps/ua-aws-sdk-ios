//
//  UAEC2VPCPeeringConnectionStatus.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPCPeeringConnectionStatus.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2VPCPeeringConnectionStatus

@synthesize code=_code, message=_message;

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
        @"code": @"ec2:code",
        @"message": @"ec2:message"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)codeQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VPCPeeringConnectionStateInitiatingRequest), @(UAEC2VPCPeeringConnectionStatePendingAcceptance), @(UAEC2VPCPeeringConnectionStateFailed), @(UAEC2VPCPeeringConnectionStateExpired), @(UAEC2VPCPeeringConnectionStateProvisioning), @(UAEC2VPCPeeringConnectionStateActive), @(UAEC2VPCPeeringConnectionStateDeleted), @(UAEC2VPCPeeringConnectionStateRejected) ]
                                               stringValues:@[ @"initiating-request", @"pending-acceptance", @"failed", @"expired", @"provisioning", @"active", @"deleted", @"rejected" ]
                                               unknownValue:@(UAEC2VPCPeeringConnectionStateUnknown)];
}

+ (NSValueTransformer *)codeXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VPCPeeringConnectionStateInitiatingRequest), @(UAEC2VPCPeeringConnectionStatePendingAcceptance), @(UAEC2VPCPeeringConnectionStateFailed), @(UAEC2VPCPeeringConnectionStateExpired), @(UAEC2VPCPeeringConnectionStateProvisioning), @(UAEC2VPCPeeringConnectionStateActive), @(UAEC2VPCPeeringConnectionStateDeleted), @(UAEC2VPCPeeringConnectionStateRejected) ]
                                               stringValues:@[ @"initiating-request", @"pending-acceptance", @"failed", @"expired", @"provisioning", @"active", @"deleted", @"rejected" ]
                                               unknownValue:@(UAEC2VPCPeeringConnectionStateUnknown)];
}

@end

#pragma clang diagnostic pop