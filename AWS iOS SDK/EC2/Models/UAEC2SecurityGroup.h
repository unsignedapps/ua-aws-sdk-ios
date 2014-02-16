//
//  UAEC2SecurityGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2IPPermission, UAEC2Tag;

@interface UAEC2SecurityGroup : UAEC2Model

@property (nonatomic, copy) NSString *ownerID;
@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSString *groupID;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSArray *ipPermissions;
@property (nonatomic, copy) NSArray *ipPermissionsEgress;
@property (nonatomic, copy) NSString *vpcID;
@property (nonatomic, copy) NSArray *tags;

@end
