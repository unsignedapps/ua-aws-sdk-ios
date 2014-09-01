//
//  UAEC2DescribeVolumeAttributeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVolumeAttributeResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ProductCode.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeVolumeAttributeResponse

@synthesize volumeID=_volumeID, autoEnableIO=_autoEnableIO, productCodes=_productCodes;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(productCodeAtIndex:) propertyName:@"productCodes"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addProductCode:) propertyName:@"productCodes"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVolumeAttributeResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumeID": @"ec2:volumeId",
        @"autoEnableIO": @"ec2:autoEnableIO/ec2:value",
        @"productCodes": @"ec2:productCodes/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)autoEnableIOXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

+ (NSValueTransformer *)productCodesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ProductCode class]];
}

@end

#pragma clang diagnostic pop