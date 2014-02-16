//
//  UAEC2DiskImageDetail.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DiskImageDetail.h"

@implementation UAEC2DiskImageDetail

@synthesize format=_format, bytes=_bytes, importManifestUrl=_importManifestUrl;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"format": @"Format",
        @"bytes": @"Bytes",
        @"importManifestUrl": @"ImportManifestUrl"
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
        @"format": @"ec2:Format",
        @"bytes": @"ec2:Bytes",
        @"importManifestUrl": @"ec2:ImportManifestUrl"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)bytesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
