//
//  UAASModel.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#ifdef UA_COMPILED_FRAMEWORK
#import <UAAWSCommon/UAAWSModel.h>
#import <UAAWSCommon/NSValueTransformer+UAValueTransformerAdditions.h>
#else
#import "UAAWSModel.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#endif

#import "UAASDataTypes.h"

@interface UAASModel : UAAWSModel <UAMTLXMLSerializing, UAMTLQuerySerializing>

@end
