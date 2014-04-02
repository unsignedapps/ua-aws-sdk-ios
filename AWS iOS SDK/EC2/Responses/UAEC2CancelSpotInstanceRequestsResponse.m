//
//  UAEC2CancelSpotInstanceRequestsResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CancelSpotInstanceRequestsResponse.h"
#import "UAEC2CancelledSpotInstanceRequest.h"

@implementation UAEC2CancelSpotInstanceRequestsResponse

@synthesize cancelledSpotInstanceRequests=_cancelledSpotInstanceRequests;

+ (NSString *)XPathPrefix
{
    return @"./ec2:CancelSpotInstanceRequestsResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"cancelledSpotInstanceRequests": @"ec2:spotInstanceRequestSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2CancelledSpotInstanceRequest *)cancelledSpotInstanceRequestAtIndex:(NSUInteger)index
{
    if (self.cancelledSpotInstanceRequests == nil || index >= ([self.cancelledSpotInstanceRequests count]-1))
        return nil;

    return [self.cancelledSpotInstanceRequests objectAtIndex:index];
}

+ (NSValueTransformer *)cancelledSpotInstanceRequestsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2CancelledSpotInstanceRequest class]];
}

@end
