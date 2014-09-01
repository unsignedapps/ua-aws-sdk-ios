//
//  UAMAResponse.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAAWSResponse.h"
#import "UAMantle.h"
#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAMADataTypes.h"
#import "UAHeaderMapping.h"

@interface UAMAResponse : UAAWSResponse <UAHeaderMapping>

@property (nonatomic, strong) NSString *requestID;

@end
