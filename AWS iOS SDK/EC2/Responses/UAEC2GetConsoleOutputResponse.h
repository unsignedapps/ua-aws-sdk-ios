//
//  UAEC2GetConsoleOutputResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2GetConsoleOutputResponse : UAEC2Response

@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *timestamp;
@property (nonatomic, copy) NSString *output;
@property (nonatomic, copy) NSString *decodedOutput;

@end
