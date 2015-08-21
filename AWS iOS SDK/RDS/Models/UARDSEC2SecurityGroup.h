//
//  UARDSEC2SecurityGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSModel.h"

@interface UARDSEC2SecurityGroup : UARDSModel

@property (nonatomic, copy) NSString *status;
@property (nonatomic, copy) NSString *eC2SecurityGroupName;
@property (nonatomic, copy) NSString *eC2SecurityGroupID;
@property (nonatomic, copy) NSString *eC2SecurityGroupOwnerID;

@end
