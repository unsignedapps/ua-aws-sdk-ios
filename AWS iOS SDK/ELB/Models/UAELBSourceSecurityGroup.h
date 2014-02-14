//
//  UAELBSourceSecurityGroup.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBSourceSecurityGroup : UAELBModel

@property (nonatomic, copy) NSString *ownerAlias;
@property (nonatomic, copy) NSString *groupName;

@end
