//
//  UAEC2DiskImageVolume.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DiskImageVolume.h"

@implementation UAEC2DiskImageVolume

@synthesize size=_size, id=_id;

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
        @"size": @"ec2:size",
        @"id": @"ec2:id"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)sizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
