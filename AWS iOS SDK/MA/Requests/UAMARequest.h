//
//  UAMARequest.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAAWSRequest.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAMADataTypes.h"
#import "UAHeaderMapping.h"
#import "UAMAClientContext.h"

@interface UAMARequest : UAAWSRequest <UAAWSRequest, UAMTLJSONSerializing, UAHeaderMapping>

@property (nonatomic, strong) UAMAClientContext *clientContext;

@end
