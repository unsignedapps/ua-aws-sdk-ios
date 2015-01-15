//
//  UASNSMessageAttribute.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSModel.h"

@interface UASNSMessageAttribute : UASNSModel

@property (nonatomic) UASNSMessageAttributeDataType dataType;
@property (nonatomic, copy) NSString *stringValue;
@property (nonatomic, copy) NSString *binaryValue;

@end
