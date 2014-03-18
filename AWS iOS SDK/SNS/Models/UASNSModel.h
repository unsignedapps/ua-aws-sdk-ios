//
//  UASNSModel.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSModel.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UASNSDataTypes.h"

@interface UASNSModel : UAAWSModel <UAMTLXMLSerializing, UAMTLQuerySerializing>

@end
