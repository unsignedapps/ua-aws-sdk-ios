//
//  UAEC2ImportVolumeTaskDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportVolumeTaskDetails.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DiskImageDescription.h"
#import "UAEC2DiskImageVolumeDescription.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ImportVolumeTaskDetails

@synthesize bytesConverted=_bytesConverted, availabilityZone=_availabilityZone, descriptionValue=_descriptionValue, image=_image, volume=_volume;

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
        @"bytesConverted": @"ec2:bytesConverted",
        @"availabilityZone": @"ec2:availabilityZone",
        @"descriptionValue": @"ec2:description",
        @"image": @"ec2:image",
        @"volume": @"ec2:volume"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)imageQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2DiskImageDescription class]];
}

+ (NSValueTransformer *)volumeQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2DiskImageVolumeDescription class]];
}

+ (NSValueTransformer *)bytesConvertedXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)imageXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2DiskImageDescription class]];
}

+ (NSValueTransformer *)volumeXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2DiskImageVolumeDescription class]];
}

@end

#pragma clang diagnostic pop