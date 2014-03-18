//
//  UASQSResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSResponse.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UASQSDataTypes.h"

@interface UASQSResponse : UAAWSResponse <UAMTLXMLSerializing>

@property (nonatomic, copy, readonly) NSString *requestID;

@end
