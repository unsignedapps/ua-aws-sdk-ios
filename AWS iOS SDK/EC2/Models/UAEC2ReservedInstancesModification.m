//
//  UAEC2ReservedInstancesModification.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ReservedInstancesModification.h"
#import "UAEC2ReservedInstancesID.h"
#import "UAEC2ReservedInstancesModificationResponse.h"

@implementation UAEC2ReservedInstancesModification

@synthesize reservedInstancesModificationID=_reservedInstancesModificationID, reservedInstancesIds=_reservedInstancesIds, modificationResults=_modificationResults, createDate=_createDate, updateDate=_updateDate, effectiveDate=_effectiveDate, status=_status, statusMessage=_statusMessage, clientToken=_clientToken;

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
        @"reservedInstancesIds": @"ec2:reservedInstancesSet/ec2:item",
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

- (UAEC2ReservedInstancesID *)reservedInstancesIDAtIndex:(NSUInteger)index
{
    if (self.reservedInstancesIds == nil || index >= ([self.reservedInstancesIds count]-1))
        return nil;

    return [self.reservedInstancesIds objectAtIndex:index];
}

- (UAEC2ReservedInstancesModificationResponse *)modificationResultAtIndex:(NSUInteger)index
{
    if (self.modificationResults == nil || index >= ([self.modificationResults count]-1))
        return nil;

    return [self.modificationResults objectAtIndex:index];
}

+ (NSValueTransformer *)reservedInstancesIdsQueryStringTransformer
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

+ (NSValueTransformer *)reservedInstancesIdsXMLTransformer
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
