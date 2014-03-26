//
//  UAEC2VPCPeeringConnectionStatus.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VPCPeeringConnectionStatus.h"

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
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"initiating-request"])
		    return @(UAEC2VPCPeeringConnectionStateInitiatingRequest);
		if ([value isEqualToString:@"pending-acceptance"])
		    return @(UAEC2VPCPeeringConnectionStatePendingAcceptance);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2VPCPeeringConnectionStateFailed);
		if ([value isEqualToString:@"expired"])
		    return @(UAEC2VPCPeeringConnectionStateExpired);
		if ([value isEqualToString:@"provisioning"])
		    return @(UAEC2VPCPeeringConnectionStateProvisioning);
		if ([value isEqualToString:@"active"])
		    return @(UAEC2VPCPeeringConnectionStateActive);
		if ([value isEqualToString:@"deleted"])
		    return @(UAEC2VPCPeeringConnectionStateDeleted);
		if ([value isEqualToString:@"rejected"])
		    return @(UAEC2VPCPeeringConnectionStateRejected);

		return @(UAEC2VPCPeeringConnectionStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VPCPeeringConnectionState castValue = (UAEC2VPCPeeringConnectionState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VPCPeeringConnectionStateInitiatingRequest:
			    return @"initiating-request";
			case UAEC2VPCPeeringConnectionStatePendingAcceptance:
			    return @"pending-acceptance";
			case UAEC2VPCPeeringConnectionStateFailed:
			    return @"failed";
			case UAEC2VPCPeeringConnectionStateExpired:
			    return @"expired";
			case UAEC2VPCPeeringConnectionStateProvisioning:
			    return @"provisioning";
			case UAEC2VPCPeeringConnectionStateActive:
			    return @"active";
			case UAEC2VPCPeeringConnectionStateDeleted:
			    return @"deleted";
			case UAEC2VPCPeeringConnectionStateRejected:
			    return @"rejected";

			case UAEC2VPCPeeringConnectionStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)codeXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2VPCPeeringConnectionStateUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"initiating-request"])
		    return @(UAEC2VPCPeeringConnectionStateInitiatingRequest);
		if ([value isEqualToString:@"pending-acceptance"])
		    return @(UAEC2VPCPeeringConnectionStatePendingAcceptance);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2VPCPeeringConnectionStateFailed);
		if ([value isEqualToString:@"expired"])
		    return @(UAEC2VPCPeeringConnectionStateExpired);
		if ([value isEqualToString:@"provisioning"])
		    return @(UAEC2VPCPeeringConnectionStateProvisioning);
		if ([value isEqualToString:@"active"])
		    return @(UAEC2VPCPeeringConnectionStateActive);
		if ([value isEqualToString:@"deleted"])
		    return @(UAEC2VPCPeeringConnectionStateDeleted);
		if ([value isEqualToString:@"rejected"])
		    return @(UAEC2VPCPeeringConnectionStateRejected);

		return @(UAEC2VPCPeeringConnectionStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VPCPeeringConnectionState castValue = (UAEC2VPCPeeringConnectionState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VPCPeeringConnectionStateInitiatingRequest:
			    return @"initiating-request";
			case UAEC2VPCPeeringConnectionStatePendingAcceptance:
			    return @"pending-acceptance";
			case UAEC2VPCPeeringConnectionStateFailed:
			    return @"failed";
			case UAEC2VPCPeeringConnectionStateExpired:
			    return @"expired";
			case UAEC2VPCPeeringConnectionStateProvisioning:
			    return @"provisioning";
			case UAEC2VPCPeeringConnectionStateActive:
			    return @"active";
			case UAEC2VPCPeeringConnectionStateDeleted:
			    return @"deleted";
			case UAEC2VPCPeeringConnectionStateRejected:
			    return @"rejected";

			case UAEC2VPCPeeringConnectionStateUnknown:
			default:
				return nil;
        }
    }];
}

@end
