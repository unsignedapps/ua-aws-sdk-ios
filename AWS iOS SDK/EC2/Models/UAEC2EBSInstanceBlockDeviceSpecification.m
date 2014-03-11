//
//  UAEC2EBSInstanceBlockDeviceSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (void)setVolumeID:(NSString *)volumeID
{
	_volumeID = volumeID;
	
	if (![self.UA_dirtyProperties containsObject:@"volumeID"])
		[self.UA_dirtyProperties addObject:@"volumeID"];
}

- (void)setDeleteOnTermination:(BOOL)deleteOnTermination
{
	_deleteOnTermination = deleteOnTermination;
	
	if (![self.UA_dirtyProperties containsObject:@"deleteOnTermination"])
		[self.UA_dirtyProperties addObject:@"deleteOnTermination"];
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
