//
//  UAEC2DiskImage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DiskImage.h"
#import "UAEC2DiskImageDetail.h"
#import "UAEC2VolumeDetail.h"

@implementation UAEC2DiskImage

@synthesize image=_image, descriptionValue=_descriptionValue, volume=_volume;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"image": @"Image",
        @"descriptionValue": @"Description",
        @"volume": @"Volume"
    }];
    return [keyPaths copy];
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
        @"image": @"ec2:Image",
        @"descriptionValue": @"ec2:Description",
        @"volume": @"ec2:Volume"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)imageQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2DiskImageDetail class]];
}

+ (NSValueTransformer *)volumeQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2VolumeDetail class]];
}

+ (NSValueTransformer *)imageXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2DiskImageDetail class]];
}

+ (NSValueTransformer *)volumeXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2VolumeDetail class]];
}

@end
