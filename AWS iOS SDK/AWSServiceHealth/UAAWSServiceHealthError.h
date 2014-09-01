//
//  UAAWSServiceHealthError.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAMantle.h"
#import "UAAWSError.h"

@interface UAAWSServiceHealthError : UAMTLModel <UAMTLJSONSerializing, UAAWSError>

@property (nonatomic) NSInteger HTTPStatusCode;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *requestID;

@end
