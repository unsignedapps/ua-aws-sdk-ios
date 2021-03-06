//
//  UAEC2EBSInstanceBlockDeviceSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EBSInstanceBlockDeviceSpecification.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

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
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)deleteOnTerminationXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop