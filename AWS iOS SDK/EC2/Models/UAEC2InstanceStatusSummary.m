//
//  UAEC2InstanceStatusSummary.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceStatusSummary.h"
#import "UAEC2InstanceStatusDetails.h"

@implementation UAEC2InstanceStatusSummary

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
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ok"])
		    return @(UAEC2InstanceStatusValueOk);
		if ([value isEqualToString:@"impaired"])
		    return @(UAEC2InstanceStatusValueImpaired);
		if ([value isEqualToString:@"insufficient-data"])
		    return @(UAEC2InstanceStatusValueInsufficientData);
		if ([value isEqualToString:@"not-applicable"])
		    return @(UAEC2InstanceStatusValueNotApplicable);

		return @(UAEC2InstanceStatusValueUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceStatusValue castValue = (UAEC2InstanceStatusValue)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatusValueOk:
			    return @"ok";
			case UAEC2InstanceStatusValueImpaired:
			    return @"impaired";
			case UAEC2InstanceStatusValueInsufficientData:
			    return @"insufficient-data";
			case UAEC2InstanceStatusValueNotApplicable:
			    return @"not-applicable";

			case UAEC2InstanceStatusValueUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)detailsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceStatusDetails class]];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2InstanceStatusValueUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"ok"])
		    return @(UAEC2InstanceStatusValueOk);
		if ([value isEqualToString:@"impaired"])
		    return @(UAEC2InstanceStatusValueImpaired);
		if ([value isEqualToString:@"insufficient-data"])
		    return @(UAEC2InstanceStatusValueInsufficientData);
		if ([value isEqualToString:@"not-applicable"])
		    return @(UAEC2InstanceStatusValueNotApplicable);

		return @(UAEC2InstanceStatusValueUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2InstanceStatusValue castValue = (UAEC2InstanceStatusValue)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2InstanceStatusValueOk:
			    return @"ok";
			case UAEC2InstanceStatusValueImpaired:
			    return @"impaired";
			case UAEC2InstanceStatusValueInsufficientData:
			    return @"insufficient-data";
			case UAEC2InstanceStatusValueNotApplicable:
			    return @"not-applicable";

			case UAEC2InstanceStatusValueUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)detailsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2InstanceStatusDetails class]];
}

@end
