//
//  UAKMSError.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 14/11/2014.
//
//

#import "UAMantle.h"
#import "UAAWSError.h"

@interface UAKMSError : UAMTLModel <UAMTLJSONSerializing, UAAWSError>

@property (nonatomic) NSInteger HTTPStatusCode;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;

@end
