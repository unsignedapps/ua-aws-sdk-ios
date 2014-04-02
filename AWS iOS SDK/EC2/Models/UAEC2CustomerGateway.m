//
//  UAEC2CustomerGateway.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CustomerGateway.h"
#import "UAEC2Tag.h"

@implementation UAEC2CustomerGateway

@synthesize customerGatewayID=_customerGatewayID, state=_state, type=_type, ipAddress=_ipAddress, bgpASN=_bgpASN, tags=_tags;

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

- (UAEC2Tag *)tagAtIndex:(NSUInteger)index
{
    if (self.tags == nil || index >= ([self.tags count]-1))
        return nil;

    return [self.tags objectAtIndex:index];
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
