//
//  UAIAMAccessKeyMetadata.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMAccessKeyMetadata.h"

@implementation UAIAMAccessKeyMetadata

@synthesize userName=_userName, accessKeyID=_accessKeyID, status=_status, createDate=_createDate;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"userName": @"UserName",
        @"accessKeyID": @"AccessKeyId",
        @"status": @"Status",
        @"createDate": @"CreateDate"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)statusQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"Active"])
		    return @(UAIAMAccessKeyStatusActive);
		if ([value isEqualToString:@"Inactive"])
		    return @(UAIAMAccessKeyStatusInactive);

		return @(UAIAMAccessKeyStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAIAMAccessKeyStatus castValue = (UAIAMAccessKeyStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAIAMAccessKeyStatusActive:
			    return @"Active";
			case UAIAMAccessKeyStatusInactive:
			    return @"Inactive";

			case UAIAMAccessKeyStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)createDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)statusXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAIAMAccessKeyStatusUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"Active"])
		    return @(UAIAMAccessKeyStatusActive);
		if ([value isEqualToString:@"Inactive"])
		    return @(UAIAMAccessKeyStatusInactive);

		return @(UAIAMAccessKeyStatusUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAIAMAccessKeyStatus castValue = (UAIAMAccessKeyStatus)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAIAMAccessKeyStatusActive:
			    return @"Active";
			case UAIAMAccessKeyStatusInactive:
			    return @"Inactive";

			case UAIAMAccessKeyStatusUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end
