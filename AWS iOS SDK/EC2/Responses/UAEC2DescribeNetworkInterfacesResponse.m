//
//  UAEC2DescribeNetworkInterfacesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeNetworkInterfacesResponse.h"
#import "UAEC2NetworkInterface.h"

@implementation UAEC2DescribeNetworkInterfacesResponse

@synthesize networkInterfaces=_networkInterfaces;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeNetworkInterfacesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkInterfaces": @"ec2:networkInterfaceSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2NetworkInterface *)networkInterfaceAtIndex:(NSUInteger)index
{
    if (self.networkInterfaces == nil || index >= ([self.networkInterfaces count]-1))
        return nil;

    return [self.networkInterfaces objectAtIndex:index];
}

+ (NSValueTransformer *)networkInterfacesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2NetworkInterface class]];
}

@end
