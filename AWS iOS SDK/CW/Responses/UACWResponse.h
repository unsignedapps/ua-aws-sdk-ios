//
//  UACWResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSResponse.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UACWDataTypes.h"

@interface UACWResponse : UAAWSResponse <UAMTLXMLSerializing>

@property (nonatomic, copy) NSString *requestID;

@end
