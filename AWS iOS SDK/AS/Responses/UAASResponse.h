//
//  UAASResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 4/02/2014.
//
//

#ifdef UA_COMPILED_FRAMEWORK
#import <UAAWSCommon/UAAWSResponse.h>
#import <UAAWSCommon/UAMantle.h>
#import <UAAWSCommon/NSValueTransformer+UAValueTransformerAdditions.h>
#else
#import "UAAWSResponse.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#endif

#import "UAASDataTypes.h"

@interface UAASResponse : UAAWSResponse <UAMTLXMLSerializing>

@property (nonatomic, strong) NSString *requestID;

@end
