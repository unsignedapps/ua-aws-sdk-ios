//
//  UAEC2PurchaseReservedInstancesOfferingResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2PurchaseReservedInstancesOfferingResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2PurchaseReservedInstancesOfferingResponse

@synthesize reservedInstancesID=_reservedInstancesID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:PurchaseReservedInstancesOfferingResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservedInstancesID": @"ec2:reservedInstancesId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop