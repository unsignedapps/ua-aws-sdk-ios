//
//  UAELBListenerDescription.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBListenerDescription.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAELBListener.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAELBListenerDescription

@synthesize listener=_listener, policyNames=_policyNames;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(policyNameAtIndex:) propertyName:@"policyNames"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addPolicyName:) propertyName:@"policyNames"];
	}
	return self;
}

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

#pragma clang diagnostic pop