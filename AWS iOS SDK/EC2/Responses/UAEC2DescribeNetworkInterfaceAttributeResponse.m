//
//  UAEC2DescribeNetworkInterfaceAttributeResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeNetworkInterfaceAttributeResponse.h"
#import "UAEC2SourceDestCheck.h"
#import "UAEC2GroupIdentifier.h"
#import "UAEC2NetworkInterfaceAttachment.h"

@implementation UAEC2DescribeNetworkInterfaceAttributeResponse

@synthesize networkInterfaceID=_networkInterfaceID, descriptionValue=_descriptionValue, sourceDestCheck=_sourceDestCheck, groups=_groups, attachment=_attachment;

+ (NSString *)XPathPrefix
{
    return @"./ec2:DescribeNetworkInterfaceAttributeResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"networkInterfaceID": @"ec2:networkInterfaceId",
        @"descriptionValue": @"ec2:description/ec2:value",
        @"sourceDestCheck": @"ec2:sourceDestCheck",
        @"groups": @"ec2:groupSet/ec2:item",
        @"attachment": @"ec2:attachment"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)sourceDestCheckXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2SourceDestCheck class]];
}

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2GroupIdentifier class]];
}

+ (NSValueTransformer *)attachmentXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAEC2NetworkInterfaceAttachment class]];
}

@end
