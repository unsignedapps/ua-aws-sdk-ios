//
//  UAEC2InstanceStatusSummary.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2InstanceStatusSummary.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2InstanceStatusDetails.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2InstanceStatusSummary

@synthesize status=_status, details=_details;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(detailAtIndex:) propertyName:@"details"];
	}
	return self;
}

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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatusValueOk), @(UAEC2InstanceStatusValueImpaired), @(UAEC2InstanceStatusValueInsufficientData), @(UAEC2InstanceStatusValueNotApplicable) ]
                                               stringValues:@[ @"ok", @"impaired", @"insufficient-data", @"not-applicable" ]
                                               unknownValue:@(UAEC2InstanceStatusValueUnknown)];
}

+ (NSValueTransformer *)detailsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2InstanceStatusDetails class]];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2InstanceStatusValueOk), @(UAEC2InstanceStatusValueImpaired), @(UAEC2InstanceStatusValueInsufficientData), @(UAEC2InstanceStatusValueNotApplicable) ]
                                               stringValues:@[ @"ok", @"impaired", @"insufficient-data", @"not-applicable" ]
                                               unknownValue:@(UAEC2InstanceStatusValueUnknown)];
}

+ (NSValueTransformer *)detailsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2InstanceStatusDetails class]];
}

@end

#pragma clang diagnostic pop