//
//  UAIAMError.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import <Mantle/Mantle.h>
#import "UAAWSError.h"

@interface UAIAMError : MTLModel <MTLXMLSerializing, UAAWSError>

@property (nonatomic) NSUInteger HTTPStatusCode;
@property (nonatomic, copy) NSString *code;
@property (nonatomic, copy) NSString *message;
@property (nonatomic, copy) NSString *requestID;

@end
