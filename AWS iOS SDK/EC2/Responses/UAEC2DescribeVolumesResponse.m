//
//  UAEC2DescribeVolumesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeVolumesResponse.h"
#import "UAEC2Volume.h"

@implementation UAEC2DescribeVolumesResponse

@synthesize volumes=_volumes;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeVolumesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"volumes": @"ec2:volumeSet/ec2:item"
    }];
    return [keyPaths copy];
}

- (UAEC2Volume *)volumeAtIndex:(NSUInteger)index
{
    if (self.volumes == nil || index >= ([self.volumes count]-1))
        return nil;

    return [self.volumes objectAtIndex:index];
}

+ (NSValueTransformer *)volumesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2Volume class]];
}

@end
