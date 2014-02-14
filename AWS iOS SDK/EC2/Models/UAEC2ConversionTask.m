//
//  UAEC2ConversionTask.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ConversionTask.h"
#import "UAEC2ImportInstanceTaskDetails.h"
#import "UAEC2ImportVolumeTaskDetails.h"
#import "UAEC2Tag.h"

@implementation UAEC2ConversionTask

@synthesize conversionTaskID=_conversionTaskID, expirationTime=_expirationTime, importInstance=_importInstance, importVolume=_importVolume, state=_state, statusMessage=_statusMessage, tags=_tags;

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
        @"conversionTaskID": @"ec2:conversionTaskId",
        @"expirationTime": @"ec2:expirationTime",
        @"importInstance": @"ec2:importInstance",
        @"importVolume": @"ec2:importVolume",
        @"state": @"ec2:state",
        @"statusMessage": @"ec2:statusMessage",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)expirationTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)importInstanceQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2ImportInstanceTaskDetails class]];
}

+ (NSValueTransformer *)importVolumeQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2ImportVolumeTaskDetails class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
  return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)expirationTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)importInstanceXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2ImportInstanceTaskDetails class]];
}

+ (NSValueTransformer *)importVolumeXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2ImportVolumeTaskDetails class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end
