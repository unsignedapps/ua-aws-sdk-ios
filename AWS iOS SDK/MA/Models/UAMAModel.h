//
//  UAMAModel.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAAWSModel.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAMADataTypes.h"

@interface UAMAModel : UAAWSModel <UAMTLJSONSerializing, UAAWSPayloadSerialisation>

@end
