//
//  UAEC2EBSInstanceBlockDevice.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EBSInstanceBlockDevice.h"

@implementation UAEC2EBSInstanceBlockDevice

@synthesize volumeID=_volumeID, status=_status, attachTime=_attachTime, deleteOnTermination=_deleteOnTermination;

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
        @"volumeID": @"ec2:volumeId",
        @"status": @"ec2:status",
        @"attachTime": @"ec2:attachTime",
        @"deleteOnTermination": @"ec2:deleteOnTermination"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)attachTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)attachTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)deleteOnTerminationXMLTransformer
{
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
