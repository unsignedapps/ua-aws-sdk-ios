//
//  UAASDescribeScalingProcessTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAASDescribeScalingProcessTypesResponse.h"
#import "UAASProcessType.h"

@implementation UAASDescribeScalingProcessTypesResponse

@synthesize processes=_processes;

+ (NSString *)XPathPrefix
{
    return @"./AutoScaling:DescribeScalingProcessTypesResponse/AutoScaling:DescribeScalingProcessTypesResult/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAASResponse XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"processes": @"AutoScaling:Processes/AutoScaling:member"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)processesXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAASProcessType class]];
}

@end
