//
//  UAELBListenerDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBListenerDescription.h"
#import "UAELBListener.h"

@implementation UAELBListenerDescription

@synthesize listener=_listener, policyNames=_policyNames;

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
        @"listener": @"ElasticLoadBalancing:Listener",
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

+ (NSValueTransformer *)listenerQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAELBListener class]];
}

+ (NSValueTransformer *)listenerXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UAELBListener class]];
}

+ (NSValueTransformer *)policyNamesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForArrayOfStrings];
}

@end
