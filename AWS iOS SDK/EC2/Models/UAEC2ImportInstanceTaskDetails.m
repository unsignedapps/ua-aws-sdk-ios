//
//  UAEC2ImportInstanceTaskDetails.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportInstanceTaskDetails.h"
#import "UAEC2ImportInstanceVolumeDetailItem.h"

@implementation UAEC2ImportInstanceTaskDetails

@synthesize volumes=_volumes, instanceID=_instanceID, platform=_platform, descriptionValue=_descriptionValue;

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
        @"volumes": @"ec2:volumes/ec2:item",
        @"instanceID": @"ec2:instanceId",
        @"platform": @"ec2:platform",
        @"descriptionValue": @"ec2:description"
    }];
    return [keyPaths copy];
}

- (UAEC2ImportInstanceVolumeDetailItem *)volumeAtIndex:(NSUInteger)index
{
    if (self.volumes == nil || index >= ([self.volumes count]-1))
        return nil;

    return [self.volumes objectAtIndex:index];
}

+ (NSValueTransformer *)volumesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2ImportInstanceVolumeDetailItem class]];
}

+ (NSValueTransformer *)volumesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ImportInstanceVolumeDetailItem class]];
}

@end
