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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"active"])
		    return @(UAEC2CancelledSpotInstanceRequestStateActive);
		if ([value isEqualToString:@"open"])
		    return @(UAEC2CancelledSpotInstanceRequestStateOpen);
		if ([value isEqualToString:@"closed"])
		    return @(UAEC2CancelledSpotInstanceRequestStateClosed);
		if ([value isEqualToString:@"cancelled"])
		    return @(UAEC2CancelledSpotInstanceRequestStateCancelled);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2CancelledSpotInstanceRequestStateFailed);

		return @(UAEC2CancelledSpotInstanceRequestStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2CancelledSpotInstanceRequestState castValue = (UAEC2CancelledSpotInstanceRequestState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2CancelledSpotInstanceRequestStateActive:
			    return @"active";
			case UAEC2CancelledSpotInstanceRequestStateOpen:
			    return @"open";
			case UAEC2CancelledSpotInstanceRequestStateClosed:
			    return @"closed";
			case UAEC2CancelledSpotInstanceRequestStateCancelled:
			    return @"cancelled";
			case UAEC2CancelledSpotInstanceRequestStateFailed:
			    return @"failed";

			case UAEC2CancelledSpotInstanceRequestStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2CancelledSpotInstanceRequestStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"active"])
		    return @(UAEC2CancelledSpotInstanceRequestStateActive);
		if ([value isEqualToString:@"open"])
		    return @(UAEC2CancelledSpotInstanceRequestStateOpen);
		if ([value isEqualToString:@"closed"])
		    return @(UAEC2CancelledSpotInstanceRequestStateClosed);
		if ([value isEqualToString:@"cancelled"])
		    return @(UAEC2CancelledSpotInstanceRequestStateCancelled);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2CancelledSpotInstanceRequestStateFailed);

		return @(UAEC2CancelledSpotInstanceRequestStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2CancelledSpotInstanceRequestState castValue = (UAEC2CancelledSpotInstanceRequestState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2CancelledSpotInstanceRequestStateActive:
			    return @"active";
			case UAEC2CancelledSpotInstanceRequestStateOpen:
			    return @"open";
			case UAEC2CancelledSpotInstanceRequestStateClosed:
			    return @"closed";
			case UAEC2CancelledSpotInstanceRequestStateCancelled:
			    return @"cancelled";
			case UAEC2CancelledSpotInstanceRequestStateFailed:
			    return @"failed";

			case UAEC2CancelledSpotInstanceRequestStateUnknown:
			default:
				return nil;
        }
    }];
}

@end
