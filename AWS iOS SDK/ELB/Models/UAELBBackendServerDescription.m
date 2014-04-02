//
//  UAELBBackendServerDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBBackendServerDescription.h"

@implementation UAELBBackendServerDescription

@synthesize instancePort=_instancePort, policyNames=_policyNames;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAELBModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"instancePort": @"ElasticLoadBalancing:InstancePort",
        @"policyNames": @"ElasticLoadBalancing:PolicyNames/ElasticLoadBalancing:member"
    }];
    return [keyPaths copy];
}

- (NSString *)policyNameAtIndex:(NSUInteger)index
{
    if (self.policyNames == nil || index >= ([self.policyNames count]-1))
        return nil;

    return [self.policyNames objectAtIndex:index];
}

+ (NSValueTransformer *)instancePortXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)policyNamesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
