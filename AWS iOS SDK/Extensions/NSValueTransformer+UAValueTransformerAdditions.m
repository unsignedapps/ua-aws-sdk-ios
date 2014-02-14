//
//  NSValueTransformer+UAValueTransformerAdditions.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import <Mantle/Mantle.h>

@implementation NSValueTransformer (UAValueTransformerAdditions)

+ (NSValueTransformer *)UA_JSONTransformerForDateWithFormat:(NSString *)dateFormat
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = dateFormat;
    dateFormatter.timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str)
    {
        return [dateFormatter dateFromString:str];

    } reverseBlock:^(NSDate *date)
    {
        return [dateFormatter stringFromDate:date];
    }];
}

+ (NSValueTransformer *)UA_JSONTransformerForDouble {
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(id object)
    {
        if ([object isKindOfClass:[NSNumber class]])
            return object;
        else if ([object isKindOfClass:[NSString class]])
            return [NSNumber numberWithDouble:[((NSString *)object) doubleValue]];

        return nil;

    } reverseBlock:^NSNumber *(NSNumber *number)
    {
        return number;
    }];
}

+ (NSValueTransformer *)UA_XMLTransformerForDouble {
	return [MTLValueTransformer reversibleTransformerWithForwardBlock:^ id (NSArray *nodes)
    {
        if ([nodes[0] stringValue] != nil && ![[nodes[0] stringValue] isEqualToString:@""])
            return @([nodes[0] stringValue].doubleValue);
        else
            return nil;

    } reverseBlock:^(NSNumber* num)
    {
        return [num stringValue];
    }];
}

+ (NSValueTransformer *)UA_JSONTransformerForBooleanString
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *booleanString)
    {
        return @([booleanString boolValue]);

    } reverseBlock:^NSString *(NSNumber *boolObject)
    {
        return [boolObject isEqualToNumber:@(YES)] ? @"true" : @"false";
    }];
}

+ (NSValueTransformer *)UA_XMLTransformerForArrayOfStrings
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *nodes)
    {
        if (nodes == nil || ![nodes isKindOfClass:[NSArray class]])
            return nil;

        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[nodes count]];
        for (DDXMLNode *node in nodes)
            [array addObject:[node stringValue]];
        
        return [array copy];
        
    } reverseBlock:^id(id obj)
    {
        return obj;
    }];
}

+ (NSValueTransformer *)UA_XMLTransformerForArrayOfNumbers
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *nodes)
    {
        if (nodes == nil || ![nodes isKindOfClass:[NSArray class]])
            return nil;

        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[nodes count]];
        for (DDXMLNode *node in nodes)
            [array addObject:[NSNumber numberWithDouble:[[node stringValue] doubleValue]]];

        return [array copy];

    } reverseBlock:^id(id obj)
    {
        return obj;
    }];
}

+ (NSValueTransformer *)UA_XMLTransformerForArrayOfDatesWithFormat:(NSString *)dateFormat
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *nodes)
    {
        if (nodes == nil || ![nodes isKindOfClass:[NSArray class]])
            return nil;

        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatter.dateFormat = dateFormat;
        dateFormatter.timeZone = [NSTimeZone timeZoneWithName:@"UTC"];

        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[nodes count]];
        for (DDXMLNode *node in nodes)
            [array addObject:[dateFormatter dateFromString:[node stringValue]]];
        
        return [array copy];
        
    } reverseBlock:^id(id obj)
    {
        return obj;
    }];
}

#pragma mark - Dictionary Transforming

+ (NSValueTransformer *)UA_JSONKeyValueTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSDictionary *(id input)
    {
        if ([input isKindOfClass:[NSDictionary class]])
            return input;
        
        else if ([input isKindOfClass:[NSArray class]])
        {
            NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithCapacity:0];
            for (NSDictionary *item in (NSArray *)input)
                [dictionary setObject:[item objectForKey:@"value"] forKey:[item objectForKey:@"key"]];
            return [dictionary copy];
        }
        
        return nil;

    } reverseBlock:^NSArray *(NSDictionary *dictionary)
    {
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[dictionary count]];
        for (NSString *key in dictionary)
            [array addObject:@{ @"key": key, @"value": [dictionary objectForKey:key] }];
        return [array copy];
    }];
}

+ (NSValueTransformer *)UA_XMLKeyValueTransformer
{
    return [MTLValueTransformer reversibleTransformerWithForwardBlock:^NSDictionary *(NSArray *nodes)
    {
        if (nodes == nil || [nodes count] == 0)
            return nil;

        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithCapacity:0];
        for (DDXMLNode *node in nodes)
        {
            // Slightly dodgy, but we only really support key/value pairs like so: <element><key>xxx</key><value>yyy</value></element> (key/value elements can appear in either order)
            NSArray *children = node.children;
            if ([children count] != 2)
                continue;

            DDXMLNode *first = children[0];
            DDXMLNode *second = children[1];
            
            if ([first.localName isEqualToString:@"key"])
                [dictionary setObject:[second stringValue] forKey:[first stringValue]];
            else
                [dictionary setObject:[first stringValue] forKey:[second stringValue]];
        }
        return [dictionary copy];
        
    } reverseBlock:^NSArray *(NSDictionary *dictionary)
    {
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[dictionary count]];
        for (NSString *key in dictionary)
            [array addObject:@{ @"key": key, @"value": [dictionary objectForKey:key] }];
        return [array copy];
    }];
}

@end
