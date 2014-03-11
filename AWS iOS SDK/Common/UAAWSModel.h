//
//  UAAWSModel.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 9/03/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAMantle.h"

@interface UAAWSModel : UAMTLModel

// An array of all properties that have been modified (are "dirty").
@property (nonatomic, strong) NSMutableArray *UA_dirtyProperties;

@end
