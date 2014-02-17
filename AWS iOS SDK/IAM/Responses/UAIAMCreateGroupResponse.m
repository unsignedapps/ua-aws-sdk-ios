//
//  UAIAMCreateGroupResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMCreateGroupResponse.h"
#import "UAIAMGroup.h"

@implementation UAIAMCreateGroupResponse

@synthesize group=_group;

+ (NSString *)XPathPrefix
{
    return @"./CreateGroupResponse/CreateGroupResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"group": @"Group"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)groupXMLTransformer
{
  return [NSValueTransformer mtl_XMLTransformerWithModelClass:[UAIAMGroup class]];
}

@end
