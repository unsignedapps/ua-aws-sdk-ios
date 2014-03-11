//
//  UAIAMRequest.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSRequest.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAIAMDataTypes.h"

@interface UAIAMRequest : UAAWSRequest <UAAWSRequest, UAMTLQuerySerializing>

@end
