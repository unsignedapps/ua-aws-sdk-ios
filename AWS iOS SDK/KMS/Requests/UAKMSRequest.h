//
//  UAKMSRequest.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 14/11/2014.
//
//

#import "UAAWSRequest.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAKMSDataTypes.h"
#import "UAHeaderMapping.h"

@interface UAKMSRequest : UAAWSRequest <UAAWSRequest, UAMTLJSONSerializing, UAHeaderMapping>

@end
