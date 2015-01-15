//
//  UAEC2ModifyReservedInstancesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ModifyReservedInstancesResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ModifyReservedInstancesResponse

@synthesize reservedInstancesModificationID=_reservedInstancesModificationID;

+ (NSString *)XPathPrefix
{
    return @"./ec2:ModifyReservedInstancesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservedInstancesModificationID": @"ec2:reservedInstancesModificationId"
    }];
    return [keyPaths copy];
}

@end

#pragma clang diagnostic pop