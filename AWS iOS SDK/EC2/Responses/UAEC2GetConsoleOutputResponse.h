//
//  UAEC2GetConsoleOutputResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2GetConsoleOutputResponse : UAEC2Response

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *output;

@end
