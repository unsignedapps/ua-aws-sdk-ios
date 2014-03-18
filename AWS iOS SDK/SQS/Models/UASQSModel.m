//
//  UASQSModel.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UASQSModel.h"

@implementation UASQSModel

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
    return @{ @"sqs": @"http://sqs.amazonaws.com/doc/2012-11-05/" };
}

@end
