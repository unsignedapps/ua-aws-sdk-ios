//
//  UASNSEndpointAttributes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UASNSModel.h"

@interface UASNSEndpointAttributes : UASNSModel

@property (nonatomic, copy) NSString *customUserData;
@property (nonatomic) BOOL enabled;
@property (nonatomic, copy) NSString *token;

@end
