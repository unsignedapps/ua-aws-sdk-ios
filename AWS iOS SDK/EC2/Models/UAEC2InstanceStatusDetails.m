//
//  UAEC2InstanceStatusDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceStatusDetails.h"

@implementation UAEC2InstanceStatusDetails

@synthesize name=_name, status=_status, impairedSince=_impairedSince;

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
        @"name": @"ec2:name",
        @"status": @"ec2:status",
        @"impairedSince": @"ec2:impairedSince"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)nameQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"reachability"])
		    return @(UAEC2InstanceStatusDetailsNameReachability);

		return @(UAEC2InstanceStatusDetailsNameUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceStatusDetailsName castValue = (UAEC2InstanceStatusDetailsName)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatusDetailsNameReachability:
			    return @"reachability";

			case UAEC2InstanceStatusDetailsNameUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"passed"])
		    return @(UAEC2InstanceStatusDetailsStatusPassed);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2InstanceStatusDetailsStatusFailed);
		if ([value isEqualToString:@"insufficient-data"])
		    return @(UAEC2InstanceStatusDetailsStatusInsufficientData);

		return @(UAEC2InstanceStatusDetailsStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceStatusDetailsStatus castValue = (UAEC2InstanceStatusDetailsStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatusDetailsStatusPassed:
			    return @"passed";
			case UAEC2InstanceStatusDetailsStatusFailed:
			    return @"failed";
			case UAEC2InstanceStatusDetailsStatusInsufficientData:
			    return @"insufficient-data";

			case UAEC2InstanceStatusDetailsStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)impairedSinceQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)nameXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceStatusDetailsNameUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"reachability"])
		    return @(UAEC2InstanceStatusDetailsNameReachability);

		return @(UAEC2InstanceStatusDetailsNameUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceStatusDetailsName castValue = (UAEC2InstanceStatusDetailsName)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatusDetailsNameReachability:
			    return @"reachability";

			case UAEC2InstanceStatusDetailsNameUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceStatusDetailsStatusUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"passed"])
		    return @(UAEC2InstanceStatusDetailsStatusPassed);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2InstanceStatusDetailsStatusFailed);
		if ([value isEqualToString:@"insufficient-data"])
		    return @(UAEC2InstanceStatusDetailsStatusInsufficientData);

		return @(UAEC2InstanceStatusDetailsStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceStatusDetailsStatus castValue = (UAEC2InstanceStatusDetailsStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatusDetailsStatusPassed:
			    return @"passed";
			case UAEC2InstanceStatusDetailsStatusFailed:
			    return @"failed";
			case UAEC2InstanceStatusDetailsStatusInsufficientData:
			    return @"insufficient-data";

			case UAEC2InstanceStatusDetailsStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)impairedSinceXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
