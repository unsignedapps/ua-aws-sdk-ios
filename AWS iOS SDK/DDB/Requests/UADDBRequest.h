//
//  UADDBRequest.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#import "UAAWSRequest.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UADDBDataTypes.h"
#import "UAHeaderMapping.h"

@interface UADDBRequest : UAAWSRequest <UAAWSRequest, UAMTLJSONSerializing, UAHeaderMapping>

@end
