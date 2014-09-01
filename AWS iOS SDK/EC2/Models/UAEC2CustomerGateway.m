//
//  UAEC2CustomerGateway.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CustomerGateway.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2Tag.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2CustomerGateway

@synthesize customerGatewayID=_customerGatewayID, state=_state, type=_type, ipAddress=_ipAddress, bgpASN=_bgpASN, tags=_tags;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(tagAtIndex:) propertyName:@"tags"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addTag:) propertyName:@"tags"];
	}
	return self;
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
        @"customerGatewayID": @"ec2:customerGatewayId",
        @"state": @"ec2:state",
        @"type": @"ec2:type",
        @"ipAddress": @"ec2:ipAddress",
        @"bgpASN": @"ec2:bgpAsn",
        @"tags": @"ec2:tagSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

@end

#pragma clang diagnostic pop