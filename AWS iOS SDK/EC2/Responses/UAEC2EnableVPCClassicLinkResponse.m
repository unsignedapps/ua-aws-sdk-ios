//
//  UAEC2EnableVPCClassicLinkResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2EnableVPCClassicLinkResponse.h"
#import "UAAWSAdditionalAccessors.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2EnableVPCClassicLinkResponse

@synthesize returnValue=_returnValue;

+ (NSString *)XPathPrefix
{
    return @"./ec2:EnableVpcClassicLinkResponse/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Response XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"returnValue": @"ec2:return"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)returnValueXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end

#pragma clang diagnostic pop