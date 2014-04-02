//
//  UADDBError.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAMantle.h"
#import "UAAWSError.h"

@interface UADDBError : UAMTLModel <UAMTLJSONSerializing, UAAWSError>

@property (nonatomic) NSUInteger HTTPStatusCode;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *requestID;

@end
