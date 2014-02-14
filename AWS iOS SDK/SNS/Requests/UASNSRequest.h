//
//  UASNSRequest.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSRequest.h"
#import <Mantle/Mantle.h>
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UASNSDataTypes.h"

@interface UASNSRequest : UAAWSRequest <UAAWSRequest, MTLQuerySerializing>

@end
