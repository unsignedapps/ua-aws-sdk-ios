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
        @"descriptionValue": @"DescriptionValue",
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
        @"descriptionValue": @"ec2:DescriptionValue",
        @"volume": @"ec2:Volume"
    }];
    return [keyPaths copy];
}

- (void)setImage:(UAEC2DiskImageDetail *)image
{
	_image = image;
	
	if (![self.UA_dirtyProperties containsObject:@"image"])
		[self.UA_dirtyProperties addObject:@"image"];
}

- (void)setDescriptionValue:(NSString *)descriptionValue
{
	_descriptionValue = descriptionValue;
	
	if (![self.UA_dirtyProperties containsObject:@"descriptionValue"])
		[self.UA_dirtyProperties addObject:@"descriptionValue"];
}

- (void)setVolume:(UAEC2VolumeDetail *)volume
{
	_volume = volume;
	
	if (![self.UA_dirtyProperties containsObject:@"volume"])
		[self.UA_dirtyProperties addObject:@"volume"];
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
