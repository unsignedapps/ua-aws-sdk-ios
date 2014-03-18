//
//  UAASError.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#ifdef UA_COMPILED_FRAMEWORK
#import <UAAWSCommon/UAMantle.h>
#import <UAAWSCommon/UAAWSError.h>
#else
#import "UAMantle.h"
#import "UAAWSError.h"
#endif

@interface UAASError : UAMTLModel <UAMTLXMLSerializing, UAAWSError>

@property (nonatomic) NSUInteger HTTPStatusCode;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *requestID;

@end
