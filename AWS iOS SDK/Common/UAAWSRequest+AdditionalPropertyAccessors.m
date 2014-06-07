//
//  UAAWSRequest+AdditionalPropertyAccessors.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/06/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAAWSRequest.h"
#import <objc/runtime.h>

@interface UAAWSRequest (AdditionalPropertyAccessors)

+ (NSString *)UA_propertyNameForSelector:(SEL)selector;

@end

#pragma mark Array Index Accessor Functions

id UAAWSRequest_AdditionalPropertyAccessor_AtIndex (UAAWSRequest *_self, SEL sel, NSUInteger index)
{
    if (![_self isKindOfClass:[UAAWSRequest class]])
        return nil;
    
    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 8 && [[selector substringFromIndex:(selector.length-8)] isEqualToString:@"AtIndex:"])
    {
        NSString *property = [[_self class] UA_propertyNameForSelector:sel];
        if (property == nil)
            return nil;
        
        
        SEL propertySelector = NSSelectorFromString(property);
        if ([_self respondsToSelector:propertySelector])
        {

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            NSArray *array = [_self performSelector:propertySelector];
#pragma clang diagnostic pop

            if (array == nil || ![array isKindOfClass:[NSArray class]] || index >= [array count])
                return nil;
            
            return [array objectAtIndex:index];
        }
    }
    
    return nil;
}

void UAAWSRequest_AdditionalPropertyAccessor_addObject (UAAWSRequest *_self, SEL sel, id object)
{
    if (![_self isKindOfClass:[UAAWSRequest class]])
        return;
    
    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 3 && [[selector substringToIndex:3] isEqualToString:@"add"])
    {
        NSString *property = [[_self class] UA_propertyNameForSelector:sel];
        if (property == nil)
            return;
        
        
        SEL propertySelector = NSSelectorFromString(property);
        if ([_self respondsToSelector:propertySelector])
        {
            
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            NSMutableArray *array = [_self performSelector:propertySelector];
#pragma clang diagnostic pop
            
            // create the mutable array if it doesn't exist
            if (array == nil)
            {
                // can we set it?
                array = [[NSMutableArray alloc] initWithCapacity:0];
                [_self setValue:array forKey:property];
            }
            
            // double check it is an array before we do anything
            if (![array isKindOfClass:[NSMutableArray class]])
                return;
            
            [array addObject:object];
        }
    }
    
    return;
}

#pragma mark - UAAWSRequest AdditionalPropertyAccessors Category

@implementation UAAWSRequest (AdditionalPropertyAccessors)

+ (NSString *)UA_propertyNameForSelector:(SEL)selector
{
    NSDictionary *additionalAccessors = [self UA_additionalAccessors];
    if (additionalAccessors != nil && [additionalAccessors count] > 0)
        return [additionalAccessors objectForKey:NSStringFromSelector(selector)];
    return nil;
}

+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    NSString *selector = NSStringFromSelector(sel);
    
    if (selector.length > 8 && [[selector substringFromIndex:(selector.length-8)] isEqualToString:@"AtIndex:"])
    {
        NSString *property = [self UA_propertyNameForSelector:sel];
        if (property != nil && [property rangeOfString:@":"].location == NSNotFound)
        {
            if ([self resolveArrayIndexMethod:sel forPropertyName:property])
                return YES;
        }
    } else if (selector.length > 3 && [[selector substringToIndex:3] isEqualToString:@"add"])
    {
        NSString *property = [self UA_propertyNameForSelector:sel];
        if (property != nil)
        {
            if ([self resolveArrayAddObjectMethod:sel forPropertyName:property])
                return YES;
        }
    }
    return [super resolveInstanceMethod:sel];
}

+ (BOOL)resolveArrayIndexMethod:(SEL)sel forPropertyName:(NSString *)propertyName
{
    if ([self instancesRespondToSelector:NSSelectorFromString(propertyName)])
    {
        objc_property_t property = class_getProperty(self, [propertyName cStringUsingEncoding:NSASCIIStringEncoding]);
        if (property != NULL)
        {
            const char *attributes = property_getAttributes(property);
            if (!strncmp(attributes, "T@", 2))
            {
                const char *types = [[NSString stringWithFormat:@"@@:%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
                class_addMethod(self, sel, (IMP)UAAWSRequest_AdditionalPropertyAccessor_AtIndex, types);
            }
        }
    }
    return NO;
}

+ (BOOL)resolveArrayAddObjectMethod:(SEL)sel forPropertyName:(NSString *)propertyName
{
    if ([self instancesRespondToSelector:NSSelectorFromString(propertyName)])
    {
        objc_property_t property = class_getProperty(self, [propertyName cStringUsingEncoding:NSASCIIStringEncoding]);
        if (property != NULL)
        {
            const char *attributes = property_getAttributes(property);
            if (!strncmp(attributes, "T@\"NSMutableArray\"", 17))
            {
                class_addMethod(self, sel, (IMP)UAAWSRequest_AdditionalPropertyAccessor_addObject, "v@:@");
            }
        }
    }
    return NO;
}

@end
