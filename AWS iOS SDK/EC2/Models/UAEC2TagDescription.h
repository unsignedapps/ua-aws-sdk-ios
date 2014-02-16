//
//  UAEC2TagDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@interface UAEC2TagDescription : UAEC2Model

@property (nonatomic, copy) NSString *resourceID;
@property (nonatomic) UAEC2ResourceType resourceType;
@property (nonatomic, copy) NSString *key;
@property (nonatomic, copy) NSString *value;

@end
