//
//  UAEC2DescribeImagesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeImagesResponse.h"
#import "UAEC2Image.h"

@implementation UAEC2DescribeImagesResponse

@synthesize images=_images;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeImagesResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"images": @"ec2:imagesSet/ec2:item"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)imagesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Image class]];
}

@end
