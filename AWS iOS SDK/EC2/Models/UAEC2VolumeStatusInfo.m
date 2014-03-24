//
//  UAEC2VolumeStatusInfo.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeStatusInfo.h"
#import "UAEC2VolumeStatusDetail.h"

@implementation UAEC2VolumeStatusInfo

@synthesize status=_status, details=_details;

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
        @"status": @"ec2:status",
        @"details": @"ec2:details/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ok"])
		    return @(UAEC2VolumeStatusInfoStatusOk);
		if ([value isEqualToString:@"impaired"])
		    return @(UAEC2VolumeStatusInfoStatusImpaired);
		if ([value isEqualToString:@"insufficient-data"])
		    return @(UAEC2VolumeStatusInfoStatusInsufficientData);

		return @(UAEC2VolumeStatusInfoStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeStatusInfoStatus castValue = (UAEC2VolumeStatusInfoStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeStatusInfoStatusOk:
			    return @"ok";
			case UAEC2VolumeStatusInfoStatusImpaired:
			    return @"impaired";
			case UAEC2VolumeStatusInfoStatusInsufficientData:
			    return @"insufficient-data";

			case UAEC2VolumeStatusInfoStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)detailsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2VolumeStatusDetail class]];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2VolumeStatusInfoStatusUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ok"])
		    return @(UAEC2VolumeStatusInfoStatusOk);
		if ([value isEqualToString:@"impaired"])
		    return @(UAEC2VolumeStatusInfoStatusImpaired);
		if ([value isEqualToString:@"insufficient-data"])
		    return @(UAEC2VolumeStatusInfoStatusInsufficientData);

		return @(UAEC2VolumeStatusInfoStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeStatusInfoStatus castValue = (UAEC2VolumeStatusInfoStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeStatusInfoStatusOk:
			    return @"ok";
			case UAEC2VolumeStatusInfoStatusImpaired:
			    return @"impaired";
			case UAEC2VolumeStatusInfoStatusInsufficientData:
			    return @"insufficient-data";

			case UAEC2VolumeStatusInfoStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)detailsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VolumeStatusDetail class]];
}

@end
