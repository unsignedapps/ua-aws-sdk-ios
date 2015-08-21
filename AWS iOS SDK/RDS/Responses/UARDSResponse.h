//
//  UARDSResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSResponse.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UARDSDataTypes.h"

@interface UARDSResponse : UAAWSResponse <UAMTLXMLSerializing>

@property (nonatomic, copy, readonly) NSString *requestID;

@end
