//
//  UASQSError.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 18/03/2014.
//
//

#import "UAMantle.h"
#import "UAAWSError.h"

@interface UASQSError : UAMTLModel <UAMTLXMLSerializing, UAAWSError>

@property (nonatomic) NSUInteger HTTPStatusCode;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *requestID;

@end
