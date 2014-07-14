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
    {
        [self setUA_dirtyProperties:[[NSMutableArray alloc] initWithCapacity:0]];
        [self startDirtyPropertyObserving];
    }
    return self;
}

- (void)dealloc
{
    [self stopDirtyPropertyObserving];
}

#pragma mark - Serialization Control

- (BOOL)canSerializePropertyKey:(NSString *)key
{
    // no serializing the dirty properties dictionary!
    if ([key isEqualToString:@"UA_dirtyProperties"])
        return NO;
    
    // if there is no dirty properties list, or its empty, or it has our property in it.
    return self.UA_dirtyProperties == nil || [self.UA_dirtyProperties count] == 0 || [self.UA_dirtyProperties containsObject:key];
}

#pragma mark - Dirty Properties

- (void)startDirtyPropertyObserving
{
    NSSet *keys = [[self class] propertyKeys];
    if (keys != nil && [keys count] > 0)
    {
        for (NSString *key in keys)
            [self addObserver:self forKeyPath:key options:NSKeyValueObservingOptionNew context:nil];
    }
}

- (void)stopDirtyPropertyObserving
{
    NSSet *keys = [[self class] propertyKeys];
    if (keys != nil && [keys count] > 0)
    {
        for (NSString *key in keys)
            [self removeObserver:self forKeyPath:key];
    }
}

- (void)didChangeValueForKey:(NSString *)key
{
	if (![self.UA_dirtyProperties containsObject:key])
		[self.UA_dirtyProperties addObject:key];
}


@end
