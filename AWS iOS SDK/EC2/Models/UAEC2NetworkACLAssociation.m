//
//  UAEC2NetworkACLAssociation.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2NetworkACLAssociation.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2NetworkACLAssociation

@synthesize networkACLAssociationID=_networkACLAssociationID, networkACLID=_networkACLID, subnetID=_subnetID;

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
        @"networkACLAssociationID": @"ec2:networkAclAssociationId",
        @"networkACLID": @"ec2:networkAclId",
        @"subnetID": @"ec2:subnetId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop