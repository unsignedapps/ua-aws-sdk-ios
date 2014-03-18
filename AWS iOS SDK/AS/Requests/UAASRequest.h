//
//  UAASRequest.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#ifdef UA_COMPILED_FRAMEWORK
#import <UAAWSCommon/UAAWSRequest.h>
#import <UAAWSCommon/UAMantle.h>
#import <UAAWSCommon/NSValueTransformer+UAValueTransformerAdditions.h>
#else
#import "UAAWSRequest.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#endif

#import "UAASDataTypes.h"

@interface UAASRequest : UAAWSRequest <UAAWSRequest, UAMTLQuerySerializing>

@end
