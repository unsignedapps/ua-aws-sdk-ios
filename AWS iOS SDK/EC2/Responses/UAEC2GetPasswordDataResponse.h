//
//  UAEC2GetPasswordDataResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2GetPasswordDataResponse : UAEC2Response

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *passwordData;

@end
