//
//  UAAWSRequest+AdditionalPropertyAccessors.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 2/06/2014.
//  Copyright (c) 2014 Unsigned Apps. All rights reserved.
//

#import "UAAWSRequest.h"
#import "UAAWSModel.h"
#import "UAAWSResponse.h"
#import "UAAWSAdditionalAccessors.h"
#import <objc/runtime.h>


#pragma mark Array Index Accessor Functions

id UAAWS_AdditionalPropertyAccessor_AtIndex (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel, NSUInteger index)
{
    if (![_self isKindOfClass:[UAAWSRequest class]] && ![_self isKindOfClass:[UAAWSModel class]] && ![_self isKindOfClass:[UAAWSResponse class]])
        return nil;
    
    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 8 && [[selector substringFromIndex:(selector.length-8)] isEqualToString:@"AtIndex:"])
    {
        NSString *property = objc_getAssociatedObject(_self, sel);
        if (property == nil)
            return nil;
        
        if (class_getProperty([_self class], [property cStringUsingEncoding:NSASCIIStringEncoding]) != NULL)
        {
            NSArray *array = [_self valueForKey:property];
            if (array == nil || ![array isKindOfClass:[NSArray class]] || index >= [array count])
                return nil;
            
            return [array objectAtIndex:index];
        }
    }
    
    return nil;
}

NSUInteger UAAWS_AdditionalPropertyAccessor_AtIndex_Enum (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel, NSUInteger index)
{
    NSNumber *value = UAAWS_AdditionalPropertyAccessor_AtIndex(_self, sel, index);
    if (value != nil && [value isKindOfClass:[NSNumber class]])
        return [value unsignedIntegerValue];
    
    return kNilOptions;
}

#pragma mark - Dictionary Index Accessor Functions

id UAAWS_AdditionalPropertyAccessor_Dictionary_KeyValue (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel, NSString *key)
{
    if (![_self isKindOfClass:[UAAWSRequest class]] && ![_self isKindOfClass:[UAAWSModel class]] && ![_self isKindOfClass:[UAAWSResponse class]])
        return kNilOptions;
    
    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 8 && [selector rangeOfString:@"For"].location != NSNotFound)
    {
        NSString *property = objc_getAssociatedObject(_self, sel);
        if (property == nil)
            return nil;
        
        if (class_getProperty([_self class], [property cStringUsingEncoding:NSASCIIStringEncoding]) != NULL)
        {
            NSDictionary *value = [_self valueForKey:property];
            if (value == nil || ![value isKindOfClass:[NSDictionary class]])
                return nil;

            return [value objectForKey:key];
        }
    }
    return nil;
}

NSUInteger UAAWS_AdditionalPropertyAccessor_Dictionary_KeyValue_Enum (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel, NSString *key)
{
    NSNumber *value = UAAWS_AdditionalPropertyAccessor_Dictionary_KeyValue(_self, sel, key);
    if (value != nil && [value isKindOfClass:[NSNumber class]])
        return [value unsignedIntegerValue];

    return kNilOptions;
}

#pragma mark - Array Adding Accessor Functions

void UAAWS_AdditionalPropertyAccessor_addObject (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel, id object)
{
    if (![_self isKindOfClass:[UAAWSRequest class]] && ![_self isKindOfClass:[UAAWSModel class]] && ![_self isKindOfClass:[UAAWSResponse class]])
        return;
    
    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 3 && [[selector substringToIndex:3] isEqualToString:@"add"])
    {
        NSString *property = objc_getAssociatedObject(_self, sel);
        if (property == nil)
            return;
        
        if (class_getProperty([_self class], [property cStringUsingEncoding:NSASCIIStringEncoding]) != NULL)
        {
            NSMutableArray *array = [_self valueForKey:property];
            
            // create the mutable array if it doesn't exist
            if (array == nil)
            {
                // can we set it?
                array = [[NSMutableArray alloc] initWithCapacity:0];
                [array addObject:object];
                [_self setValue:array forKey:property];
                return;
            }
            
            // double check it is an array before we do anything
            if (![array isKindOfClass:[NSMutableArray class]])
                return;
            
            [array addObject:object];
        }
    }
    
    return;
}

void UAAWS_AdditionalPropertyAccessor_addObject_Enum (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel, NSUInteger value)
{
    if (![_self isKindOfClass:[UAAWSRequest class]] && ![_self isKindOfClass:[UAAWSModel class]] && ![_self isKindOfClass:[UAAWSResponse class]])
        return;
    
    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 3 && [[selector substringToIndex:3] isEqualToString:@"add"])
    {
        NSString *property = objc_getAssociatedObject(_self, sel);
        if (property == nil)
            return;
        
        if (class_getProperty([_self class], [property cStringUsingEncoding:NSASCIIStringEncoding]) != NULL)
        {
            NSMutableArray *array = [_self valueForKey:property];
            
            // create the mutable array if it doesn't exist
            if (array == nil)
            {
                // can we set it?
                array = [[NSMutableArray alloc] initWithCapacity:0];
                [array addObject:@(value)];
                [_self setValue:array forKey:property];
                return;
            }
            
            // double check it is an array before we do anything
            if (![array isKindOfClass:[NSMutableArray class]])
                return;
            
            [array addObject:@(value)];
        }
    }
    
    return;
}

#pragma mark - Dictionary Adding Accessor Functions

void UAAWS_AdditionalPropertyAccessor_setObjectForKey (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel, id value, id<NSCopying>key)
{
    if (![_self isKindOfClass:[UAAWSRequest class]] && ![_self isKindOfClass:[UAAWSModel class]] && ![_self isKindOfClass:[UAAWSResponse class]])
        return;
    
    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 7 && [[selector substringToIndex:3] isEqualToString:@"set"] && [selector rangeOfString:@":for"].location != NSNotFound)
    {
        NSString *property = objc_getAssociatedObject(_self, sel);
        if (property == nil)
            return;
        
        if (class_getProperty([_self class], [property cStringUsingEncoding:NSASCIIStringEncoding]) != NULL)
        {
            NSMutableDictionary *dictionary = [_self valueForKey:property];
            
            // create the dictionary if it doesn't exist
            if (dictionary == nil)
            {
                dictionary = [[NSMutableDictionary alloc] initWithCapacity:0];
                [dictionary setObject:value forKey:key];
                [_self setValue:dictionary forKey:property];
                return;
            }
            
            // double check stuff
            if (![dictionary isKindOfClass:[NSDictionary class]])
                return;
            
            // add it
            [dictionary setObject:value forKey:key];
        }
    }
}

void UAAWS_AdditionalPropertyAccessor_setEnumForKey (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel, NSUInteger value, id<NSCopying>key)
{
    UAAWS_AdditionalPropertyAccessor_setObjectForKey(_self, sel, @(value), key);
}

#pragma mark - Base64 Decoding/Encoding Accessors Methods

NSString *UAAWS_AdditionalPropertyAccessor_decodeBase64 (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel)
{
    if (![_self isKindOfClass:[UAAWSRequest class]] && ![_self isKindOfClass:[UAAWSModel class]] && ![_self isKindOfClass:[UAAWSResponse class]])
        return nil;
    
    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 8 && [[selector substringToIndex:7] isEqualToString:@"decoded"])
    {
        NSString *property = objc_getAssociatedObject(_self, sel);
        if (property == nil)
            return nil;
        
        if (class_getProperty([_self class], [property cStringUsingEncoding:NSASCIIStringEncoding]) != NULL)
        {
            NSString *encoded = [_self valueForKey:property];
            
            if (encoded == nil)
                return nil;
            
            if (encoded.length == 0)
                return @"";
            
            NSData *data = [[NSData alloc] initWithBase64EncodedString:encoded options:NSDataBase64DecodingIgnoreUnknownCharacters];
            return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        }
    }
    
    return nil;
}

void UAAWS_AdditionalPropertyAccessor_encodeBase64 (NSObject<UAAWSAdditionalAccessors> *_self, SEL sel, NSString *decoded)
{
    if (![_self isKindOfClass:[UAAWSRequest class]] && ![_self isKindOfClass:[UAAWSModel class]] && ![_self isKindOfClass:[UAAWSResponse class]])
        return;
    
    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 11 && [[selector substringToIndex:10] isEqualToString:@"setDecoded"])
    {
        NSString *property = objc_getAssociatedObject(_self, sel);
        if (property == nil)
            return;
        
        if (class_getProperty([_self class], [property cStringUsingEncoding:NSASCIIStringEncoding]) != NULL)
        {
            // is it blank? blank it
            if (decoded == nil)
                [_self setValue:nil forKey:property];
            
            else
            {
                NSString *encoded = [[decoded dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:kNilOptions];
                [_self setValue:encoded forKey:property];
            }
        }
    }
}

#pragma mark - DynamoDB Methods

id UAAWS_AdditionalPropertyAccessor_DDBKeyValue (NSObject<UAAWSRequest> *_self, SEL sel, NSString *attributeName)
{
    if (![_self isKindOfClass:[UAAWSRequest class]] && ![_self isKindOfClass:[UAAWSModel class]] && ![_self isKindOfClass:[UAAWSResponse class]])
        return nil;

    NSString *selector = NSStringFromSelector(sel);
    if (selector.length > 22 && [[selector substringFromIndex:(selector.length-22)] isEqualToString:@"ValueForAttributeName:"])
    {
        NSString *property = objc_getAssociatedObject(_self, sel);
        if (property == nil || property.length == 0)
            return nil;
        
        if (class_getProperty([_self class], [property cStringUsingEncoding:NSASCIIStringEncoding]) != NULL)
        {
            NSDictionary *dictionary = [_self valueForKey:property];
            if (dictionary != nil && [dictionary isKindOfClass:[NSDictionary class]])
                return [dictionary objectForKey:attributeName];
        }
    }
    return nil;
}

#pragma mark - UAAWSRequest AdditionalPropertyAccessors Category

@implementation UAAWSRequest (AdditionalPropertyAccessors)

- (void)UA_addAtIndexAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"@@:%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_AtIndex, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addAtIndexEnumAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"%s@:%s", @encode(NSUInteger), @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_AtIndex_Enum, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addAddObjectAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_addObject, "v@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addAddEnumAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"v@:%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_addObject_Enum, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDictionaryKeyValueAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_Dictionary_KeyValue, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDictionaryKeyValueEnumAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_Dictionary_KeyValue_Enum, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDecodeBase64AdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_decodeBase64, "@@:");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addEncodeBase64AdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_encodeBase64, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDDBKeyValueAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_DDBKeyValue, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addSetObjectForKeyAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_setObjectForKey, "v@:@@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addSetEnumForKeyAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"v@:@%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_setEnumForKey, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

@end

#pragma mark - UAAWSModel AdditionalPropertyAccessors Category

@implementation UAAWSModel (AdditionalPropertyAccessors)

- (void)UA_addAtIndexAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"@@:%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_AtIndex, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addAtIndexEnumAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"%s@:%s", @encode(NSUInteger), @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_AtIndex_Enum, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addAddObjectAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_addObject, "v@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addAddEnumAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"v@:%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_addObject_Enum, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDictionaryKeyValueAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_Dictionary_KeyValue, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDictionaryKeyValueEnumAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_Dictionary_KeyValue_Enum, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDecodeBase64AdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_decodeBase64, "@@:");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addEncodeBase64AdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_encodeBase64, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDDBKeyValueAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_DDBKeyValue, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addSetObjectForKeyAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_setObjectForKey, "v@:@@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addSetEnumForKeyAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"v@:@%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_setEnumForKey, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}


@end

#pragma mark - UAAWSResponse AdditionalPropertyAccessors Category

@implementation UAAWSResponse (AdditionalPropertyAccessors)

- (void)UA_addAtIndexAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"@@:%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_AtIndex, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addAtIndexEnumAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"%s@:%s", @encode(NSUInteger), @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_AtIndex_Enum, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addAddObjectAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_addObject, "v@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addAddEnumAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"v@:%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_addObject_Enum, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDictionaryKeyValueAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_Dictionary_KeyValue, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDictionaryKeyValueEnumAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_Dictionary_KeyValue_Enum, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDecodeBase64AdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_decodeBase64, "@@:");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addEncodeBase64AdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_encodeBase64, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addDDBKeyValueAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_DDBKeyValue, "@@:@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addSetObjectForKeyAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_setObjectForKey, "v@:@@");
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

- (void)UA_addSetEnumForKeyAdditionalAccessorForSelector:(SEL)sel propertyName:(NSString *)propertyName
{
    const char *types = [[NSString stringWithFormat:@"v@:@%s", @encode(NSUInteger)] cStringUsingEncoding:NSASCIIStringEncoding];
    class_addMethod([self class], sel, (IMP)UAAWS_AdditionalPropertyAccessor_setEnumForKey, types);
    objc_setAssociatedObject(self, sel, propertyName, OBJC_ASSOCIATION_COPY);
}

@end
