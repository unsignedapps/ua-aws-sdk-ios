//
//  UASNSModel.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UASNSModel.h"

@implementation UASNSModel

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    return [NSDictionary dictionary];
}

+ (NSString *)XPathPrefix
{
    return nil;
}

+ (NSDictionary *)XMLNamespaceMappings
{
    return @{ @"Sns": @"http://sns.amazonaws.com/doc/2010-03-31/" };
}

@end
