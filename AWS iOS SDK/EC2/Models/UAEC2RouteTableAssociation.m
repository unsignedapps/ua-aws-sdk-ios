//
//  UAEC2RouteTableAssociation.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2RouteTableAssociation.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2RouteTableAssociation

@synthesize routeTableAssociationID=_routeTableAssociationID, routeTableID=_routeTableID, subnetID=_subnetID, main=_main;

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
        @"routeTableAssociationID": @"ec2:routeTableAssociationId",
        @"routeTableID": @"ec2:routeTableId",
        @"subnetID": @"ec2:subnetId",
        @"main": @"ec2:main"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)mainXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop