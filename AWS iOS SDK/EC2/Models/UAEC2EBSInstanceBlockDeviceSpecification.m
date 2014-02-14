//
//  UAEC2EBSInstanceBlockDeviceSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EBSInstanceBlockDeviceSpecification.h"

@implementation UAEC2EBSInstanceBlockDeviceSpecification

@synthesize volumeID=_volumeID, deleteOnTermination=_deleteOnTermination;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumeID": @"VolumeId",
        @"deleteOnTermination": @"DeleteOnTermination"
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
        @"volumeID": @"ec2:VolumeId",
        @"deleteOnTermination": @"ec2:DeleteOnTermination"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)deleteOnTerminationQueryStringTransformer
{
    return [MTLValueTransformer UA_JSONTransformerForBooleanString];
}

@end
