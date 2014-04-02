//
//  UAASDescribeScalingProcessTypesResponse.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (UAASProcessType *)processAtIndex:(NSUInteger)index
{
    if (self.processes == nil || index >= ([self.processes count]-1))
        return nil;

    return [self.processes objectAtIndex:index];
}

+ (NSValueTransformer *)processesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAASProcessType class]];
}

@end
