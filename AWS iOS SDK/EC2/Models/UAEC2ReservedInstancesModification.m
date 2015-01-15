//
//  UAEC2ReservedInstancesModification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstancesModification.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2ReservedInstancesID.h"
#import "UAEC2ReservedInstancesModificationResponse.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2ReservedInstancesModification

@synthesize reservedInstancesModificationID=_reservedInstancesModificationID, reservedInstancesIDs=_reservedInstancesIDs, modificationResults=_modificationResults, createDate=_createDate, updateDate=_updateDate, effectiveDate=_effectiveDate, status=_status, statusMessage=_statusMessage, clientToken=_clientToken;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(reservedInstancesIDAtIndex:) propertyName:@"reservedInstancesIDs"];
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(modificationResultAtIndex:) propertyName:@"modificationResults"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addReservedInstancesID:) propertyName:@"reservedInstancesIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addModificationResult:) propertyName:@"modificationResults"];
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
    NSMutableDictionary *keyPaths = [[UAEC2Model XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"reservedInstancesModificationID": @"ec2:reservedInstancesModificationId",
        @"reservedInstancesIDs": @"ec2:reservedInstancesSet/ec2:item",
        @"modificationResults": @"ec2:modificationResultSet/ec2:item",
        @"createDate": @"ec2:createDate",
        @"updateDate": @"ec2:updateDate",
        @"effectiveDate": @"ec2:effectiveDate",
        @"status": @"ec2:status",
        @"statusMessage": @"ec2:statusMessage",
        @"clientToken": @"ec2:clientToken"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)reservedInstancesIDsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2ReservedInstancesID class]];
}

+ (NSValueTransformer *)modificationResultsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2ReservedInstancesModificationResponse class]];
}

+ (NSValueTransformer *)createDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)updateDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)effectiveDateQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)reservedInstancesIDsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstancesID class]];
}

+ (NSValueTransformer *)modificationResultsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UAEC2ReservedInstancesModificationResponse class]];
}

+ (NSValueTransformer *)createDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)updateDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)effectiveDateXMLTransformer
{
    return [NSValueTransformer UAMTL_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

@end

#pragma clang diagnostic pop