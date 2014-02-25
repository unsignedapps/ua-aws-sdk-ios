//
//  UAEC2Volume.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Volume.h"
#import "UAEC2VolumeAttachment.h"
#import "UAEC2Tag.h"

@implementation UAEC2Volume

@synthesize volumeID=_volumeID, size=_size, snapshotID=_snapshotID, availabilityZone=_availabilityZone, state=_state, createTime=_createTime, attachments=_attachments, tags=_tags, volumeType=_volumeType, iops=_iops;

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
        @"volumeID": @"ec2:volumeId",
        @"size": @"ec2:size",
        @"snapshotID": @"ec2:snapshotId",
        @"availabilityZone": @"ec2:availabilityZone",
        @"state": @"ec2:status",
        @"createTime": @"ec2:createTime",
        @"attachments": @"ec2:attachmentSet/ec2:item",
        @"tags": @"ec2:tagSet/ec2:item",
        @"volumeType": @"ec2:volumeType",
        @"iops": @"ec2:iops"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)stateQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"creating"])
		    return @(UAEC2VolumeStateCreating);
		if ([value isEqualToString:@"available"])
		    return @(UAEC2VolumeStateAvailable);
		if ([value isEqualToString:@"in-use"])
		    return @(UAEC2VolumeStateInUse);
		if ([value isEqualToString:@"deleting"])
		    return @(UAEC2VolumeStateDeleting);
		if ([value isEqualToString:@"deleted"])
		    return @(UAEC2VolumeStateDeleted);
		if ([value isEqualToString:@"error"])
		    return @(UAEC2VolumeStateError);

		return @(UAEC2VolumeStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeState castValue = (UAEC2VolumeState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeStateCreating:
			    return @"creating";
			case UAEC2VolumeStateAvailable:
			    return @"available";
			case UAEC2VolumeStateInUse:
			    return @"in-use";
			case UAEC2VolumeStateDeleting:
			    return @"deleting";
			case UAEC2VolumeStateDeleted:
			    return @"deleted";
			case UAEC2VolumeStateError:
			    return @"error";

			case UAEC2VolumeStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)createTimeQueryStringTransformer
{
    return [NSValueTransformer UA_JSONTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)attachmentsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2VolumeAttachment class]];
}

+ (NSValueTransformer *)tagsQueryStringTransformer
{
	return [NSValueTransformer mtl_QueryStringArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)volumeTypeQueryStringTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"standard"])
		    return @(UAEC2VolumeTypeStandard);
		if ([value isEqualToString:@"io1"])
		    return @(UAEC2VolumeTypeIo1);

		return @(UAEC2VolumeTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeType castValue = (UAEC2VolumeType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeTypeStandard:
			    return @"standard";
			case UAEC2VolumeTypeIo1:
			    return @"io1";

			case UAEC2VolumeTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)sizeXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)stateXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2VolumeStateUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"creating"])
		    return @(UAEC2VolumeStateCreating);
		if ([value isEqualToString:@"available"])
		    return @(UAEC2VolumeStateAvailable);
		if ([value isEqualToString:@"in-use"])
		    return @(UAEC2VolumeStateInUse);
		if ([value isEqualToString:@"deleting"])
		    return @(UAEC2VolumeStateDeleting);
		if ([value isEqualToString:@"deleted"])
		    return @(UAEC2VolumeStateDeleted);
		if ([value isEqualToString:@"error"])
		    return @(UAEC2VolumeStateError);

		return @(UAEC2VolumeStateUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeState castValue = (UAEC2VolumeState)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeStateCreating:
			    return @"creating";
			case UAEC2VolumeStateAvailable:
			    return @"available";
			case UAEC2VolumeStateInUse:
			    return @"in-use";
			case UAEC2VolumeStateDeleting:
			    return @"deleting";
			case UAEC2VolumeStateDeleted:
			    return @"deleted";
			case UAEC2VolumeStateError:
			    return @"error";

			case UAEC2VolumeStateUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)createTimeXMLTransformer
{
    return [NSValueTransformer mtl_XMLTransformerForDateWithFormat:@"yyyy-MM-dd'T'HH:mm:ss"];
}

+ (NSValueTransformer *)attachmentsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2VolumeAttachment class]];
}

+ (NSValueTransformer *)tagsXMLTransformer
{
  return [NSValueTransformer mtl_XMLArrayTransformerWithModelClass:[UAEC2Tag class]];
}

+ (NSValueTransformer *)volumeTypeXMLTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
		if (nodes == nil || [nodes count] == 0)
			return @(UAEC2VolumeTypeUnknown);

		NSString *value = [((DDXMLElement *)nodes.firstObject) stringValue];
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
		if ([value isEqualToString:@"standard"])
		    return @(UAEC2VolumeTypeStandard);
		if ([value isEqualToString:@"io1"])
		    return @(UAEC2VolumeTypeIo1);

		return @(UAEC2VolumeTypeUnknown);

    } reverseBlock:^NSString *(NSNumber *value)
    {
        UAEC2VolumeType castValue = (UAEC2VolumeType)[value unsignedIntegerValue];
        switch (castValue)
        {
			case UAEC2VolumeTypeStandard:
			    return @"standard";
			case UAEC2VolumeTypeIo1:
			    return @"io1";

			case UAEC2VolumeTypeUnknown:
			default:
				return nil;
        }
    }];
}

+ (NSValueTransformer *)iopsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

@end
