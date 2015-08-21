//
//  UARDSModel.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSModel.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UARDSDataTypes.h"

@interface UARDSModel : UAAWSModel <UAMTLXMLSerializing, UAMTLQuerySerializing>

@end
