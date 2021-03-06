//
//  UAEC2VolumeStatusInfo.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2VolumeStatusInfo.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2VolumeStatusDetail.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2VolumeStatusInfo

@synthesize status=_status, details=_details;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(detailAtIndex:) propertyName:@"details"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addDetail:) propertyName:@"details"];
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
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeStatusInfoStatusOk), @(UAEC2VolumeStatusInfoStatusImpaired), @(UAEC2VolumeStatusInfoStatusInsufficientData) ]
                                               stringValues:@[ @"ok", @"impaired", @"insufficient-data" ]
                                               unknownValue:@(UAEC2VolumeStatusInfoStatusUnknown)];
}

+ (NSValueTransformer *)detailsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2VolumeStatusDetail class]];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UAEC2VolumeStatusInfoStatusOk), @(UAEC2VolumeStatusInfoStatusImpaired), @(UAEC2VolumeStatusInfoStatusInsufficientData) ]
                                               stringValues:@[ @"ok", @"impaired", @"insufficient-data" ]
                                               unknownValue:@(UAEC2VolumeStatusInfoStatusUnknown)];
}

+ (NSValueTransformer *)detailsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2VolumeStatusDetail class]];
}

@end

#pragma clang diagnostic pop