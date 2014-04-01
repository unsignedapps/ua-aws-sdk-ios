//
//  UAEC2VolumeStatusDetail.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeStatusDetail.h"

@implementation UAEC2VolumeStatusDetail

@synthesize name=_name, status=_status;

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
        @"status": @"ec2:status"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)nameQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"io-enabled"])
		    return @(UAEC2VolumeStatusNameIoEnabled);
		if ([value isEqualToString:@"io-performance"])
		    return @(UAEC2VolumeStatusNameIoPerformance);

		return @(UAEC2VolumeStatusNameUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeStatusName castValue = (UAEC2VolumeStatusName)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeStatusNameIoEnabled:
			    return @"io-enabled";
			case UAEC2VolumeStatusNameIoPerformance:
			    return @"io-performance";

			case UAEC2VolumeStatusNameUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"passed"])
		    return @(UAEC2VolumeStatusDetailStatusPassed);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2VolumeStatusDetailStatusFailed);
		if ([value isEqualToString:@"normal"])
		    return @(UAEC2VolumeStatusDetailStatusNormal);
		if ([value isEqualToString:@"degraded"])
		    return @(UAEC2VolumeStatusDetailStatusDegraded);
		if ([value isEqualToString:@"severely-degraded"])
		    return @(UAEC2VolumeStatusDetailStatusSeverelyDegraded);
		if ([value isEqualToString:@"stalled"])
		    return @(UAEC2VolumeStatusDetailStatusStalled);
		if ([value isEqualToString:@"not-applicable"])
		    return @(UAEC2VolumeStatusDetailStatusNotApplicable);

		return @(UAEC2VolumeStatusDetailStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeStatusDetailStatus castValue = (UAEC2VolumeStatusDetailStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeStatusDetailStatusPassed:
			    return @"passed";
			case UAEC2VolumeStatusDetailStatusFailed:
			    return @"failed";
			case UAEC2VolumeStatusDetailStatusNormal:
			    return @"normal";
			case UAEC2VolumeStatusDetailStatusDegraded:
			    return @"degraded";
			case UAEC2VolumeStatusDetailStatusSeverelyDegraded:
			    return @"severely-degraded";
			case UAEC2VolumeStatusDetailStatusStalled:
			    return @"stalled";
			case UAEC2VolumeStatusDetailStatusNotApplicable:
			    return @"not-applicable";

			case UAEC2VolumeStatusDetailStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)nameXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2VolumeStatusNameUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"io-enabled"])
		    return @(UAEC2VolumeStatusNameIoEnabled);
		if ([value isEqualToString:@"io-performance"])
		    return @(UAEC2VolumeStatusNameIoPerformance);

		return @(UAEC2VolumeStatusNameUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeStatusName castValue = (UAEC2VolumeStatusName)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeStatusNameIoEnabled:
			    return @"io-enabled";
			case UAEC2VolumeStatusNameIoPerformance:
			    return @"io-performance";

			case UAEC2VolumeStatusNameUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2VolumeStatusDetailStatusUnknown);

		NSString *value = [((UADDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"passed"])
		    return @(UAEC2VolumeStatusDetailStatusPassed);
		if ([value isEqualToString:@"failed"])
		    return @(UAEC2VolumeStatusDetailStatusFailed);
		if ([value isEqualToString:@"normal"])
		    return @(UAEC2VolumeStatusDetailStatusNormal);
		if ([value isEqualToString:@"degraded"])
		    return @(UAEC2VolumeStatusDetailStatusDegraded);
		if ([value isEqualToString:@"severely-degraded"])
		    return @(UAEC2VolumeStatusDetailStatusSeverelyDegraded);
		if ([value isEqualToString:@"stalled"])
		    return @(UAEC2VolumeStatusDetailStatusStalled);
		if ([value isEqualToString:@"not-applicable"])
		    return @(UAEC2VolumeStatusDetailStatusNotApplicable);

		return @(UAEC2VolumeStatusDetailStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeStatusDetailStatus castValue = (UAEC2VolumeStatusDetailStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeStatusDetailStatusPassed:
			    return @"passed";
			case UAEC2VolumeStatusDetailStatusFailed:
			    return @"failed";
			case UAEC2VolumeStatusDetailStatusNormal:
			    return @"normal";
			case UAEC2VolumeStatusDetailStatusDegraded:
			    return @"degraded";
			case UAEC2VolumeStatusDetailStatusSeverelyDegraded:
			    return @"severely-degraded";
			case UAEC2VolumeStatusDetailStatusStalled:
			    return @"stalled";
			case UAEC2VolumeStatusDetailStatusNotApplicable:
			    return @"not-applicable";

			case UAEC2VolumeStatusDetailStatusUnknown:
			default:
				return nil;
        }
    }];
}

@end
