//
//  UASQSModel.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSModel.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UASQSDataTypes.h"

@interface UASQSModel : UAAWSModel <UAMTLXMLSerializing, UAMTLQuerySerializing>

@end
