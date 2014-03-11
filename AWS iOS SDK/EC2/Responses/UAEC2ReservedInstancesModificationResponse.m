//
//  UAEC2ReservedInstancesModificationResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstancesModificationResponse.h"
#import "UAEC2TargetConfiguration.h"

@implementation UAEC2ReservedInstancesModificationResponse

@synthesize reservedInstancesID=_reservedInstancesID, targetConfiguration=_targetConfiguration;

+ (NSString *)XPathPrefix
{
    return @"./ec2:item/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservedInstancesID": @"ec2:reservedInstancesId",
        @"targetConfiguration": @"ec2:targetConfiguration"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)targetConfigurationXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2TargetConfiguration class]];
}

@end
