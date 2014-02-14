//
//  UAEC2Entry.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Entry.h"
#import "UAEC2IcmpTypeCode.h"
#import "UAEC2PortRange.h"

@implementation UAEC2Entry

@synthesize ruleNumber=_ruleNumber, protocol=_protocol, ruleAction=_ruleAction, egress=_egress, cidrBlock=_cidrBlock, icmpTypeCode=_icmpTypeCode, portRange=_portRange;

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
        @"ruleNumber": @"ec2:ruleNumber",
        @"protocol": @"ec2:protocol",
        @"ruleAction": @"ec2:ruleAction",
        @"egress": @"ec2:egress",
        @"cidrBlock": @"ec2:cidrBlock",
        @"icmpTypeCode": @"ec2:icmpTypeCode",
        @"portRange": @"ec2:portRange"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)icmpTypeCodeQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2IcmpTypeCode class]];
}

+ (NSValueTransformer *)portRangeQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2PortRange class]];
}

+ (NSValueTransformer *)ruleNumberXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)icmpTypeCodeXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2IcmpTypeCode class]];
}

+ (NSValueTransformer *)portRangeXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAEC2PortRange class]];
}

@end
