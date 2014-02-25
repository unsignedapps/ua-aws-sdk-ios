//
//  UAEC2ImportInstanceVolumeDetailItem.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportInstanceVolumeDetailItem.h"
#import "UAEC2DiskImageDescription.h"
#import "UAEC2DiskImageVolume.h"

@implementation UAEC2ImportInstanceVolumeDetailItem

@synthesize bytesConverted=_bytesConverted, availabilityZone=_availabilityZone, image=_image, volume=_volume, status=_status, statusMessage=_statusMessage, descriptionValue=_descriptionValue;

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
        @"image": @"ec2:image",
        @"volume": @"ec2:volume",
        @"status": @"ec2:status",
        @"statusMessage": @"ec2:statusMessage",
        @"descriptionValue": @"ec2:description"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)imageQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2DiskImageDescription class]];
}

+ (NSValueTransformer *)volumeQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringDictionaryTransformerWithModelClass:[UAEC2DiskImageVolume class]];
}

+ (NSValueTransformer *)bytesConvertedXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)imageXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2DiskImageDescription class]];
}

+ (NSValueTransformer *)volumeXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2DiskImageVolume class]];
}

@end
