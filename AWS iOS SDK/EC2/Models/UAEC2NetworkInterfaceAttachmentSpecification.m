//
//  UAEC2NetworkInterfaceAttachmentSpecification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2NetworkInterfaceAttachmentSpecification.h"

@implementation UAEC2NetworkInterfaceAttachmentSpecification

@synthesize attachmentID=_attachmentID, deleteOnTermination=_deleteOnTermination;

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Model queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"attachmentID": @"AttachmentId",
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
        @"attachmentID": @"ec2:AttachmentId",
        @"deleteOnTermination": @"ec2:DeleteOnTermination"
    }];
    return [keyPaths copy];
}

- (void)setAttachmentID:(NSString *)attachmentID
{
	_attachmentID = attachmentID;
	
	if (![self.UA_dirtyProperties containsObject:@"attachmentID"])
		[self.UA_dirtyProperties addObject:@"attachmentID"];
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
