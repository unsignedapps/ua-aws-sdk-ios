//
//  UAEC2Request.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import "UAAWSRequest.h"
#import "UAEC2DataTypes.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"

@interface UAEC2Request : UAAWSRequest <UAAWSRequest, UAMTLQuerySerializing>

@end
