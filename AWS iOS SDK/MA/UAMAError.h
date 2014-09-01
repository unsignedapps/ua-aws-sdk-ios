//
//  UAMAError.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 1/09/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMantle.h"
#import "UAAWSError.h"

@interface UAMAError : UAMTLModel <UAMTLJSONSerializing, UAAWSError>

@property (nonatomic) NSInteger HTTPStatusCode;
@property (nonatomic, copy) NSString *type;
@property (nonatomic, copy) NSString *message;

@end
