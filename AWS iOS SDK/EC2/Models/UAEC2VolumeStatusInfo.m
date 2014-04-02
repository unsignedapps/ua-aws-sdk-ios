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

- (UAEC2VolumeStatusDetail *)detailAtIndex:(NSUInteger)index
{
    if (self.details == nil || index >= ([self.details count]-1))
        return nil;

    return [self.details objectAtIndex:index];
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
