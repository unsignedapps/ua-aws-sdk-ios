//
//  UAAWSModel.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 9/03/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAAWSModel.h"

@implementation UAAWSModel

@synthesize UA_dirtyProperties=_UA_dirtyProperties;

- (id)init
{
    if (self = [super init])
        [self setUA_dirtyProperties:[[NSMutableArray alloc] initWithCapacity:0]];
    return self;
}

#pragma mark - Serialization Control

- (BOOL)canSerializePropertyKey:(NSString *)key
{
    // if there is no dirty properties list, or its empty, or it has our property in it.
    return self.UA_dirtyProperties == nil || [self.UA_dirtyProperties count] == 0 || [self.UA_dirtyProperties containsObject:key];
}

@end
