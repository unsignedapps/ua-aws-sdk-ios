//
//  NSValueTransformer+UAValueTransformerAdditions.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import "NSValueTransformer+UAValueTransformerAdditions.h"
#import "UAMantle.h"

NSString * const UADDBParseError = @"UADDBParseError";
NSString * const UADDBParseErrorInputKey = @"Input";

@implementation NSValueTransformer (UAValueTransformerAdditions)

+ (NSValueTransformer *)UA_JSONTransformerForDateWithFormat:(NSString *)dateFormat
{
    // if the date format is actually nil it must be a unix timestamp
    if (dateFormat == nil)
        return [NSValueTransformer UA_JSONTransformerForUnixTimestamp];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = dateFormat;
    dateFormatter.timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^(NSString *str)
    {
        return [dateFormatter dateFromString:str];

    } reverseBlock:^(NSDate *date)
    {
        return [dateFormatter stringFromDate:date];
    }];
}

+ (NSValueTransformer *)UA_JSONTransformerForUnixTimestamp
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSDate *(id input)
    {
        if (input == nil)
            return nil;
        
        if ([input isKindOfClass:[NSNumber class]])
            return [NSDate dateWithTimeIntervalSince1970:[((NSNumber *)input) doubleValue]];
        
        if ([input isKindOfClass:[NSString class]])
            return [NSDate dateWithTimeIntervalSince1970:[((NSString *)input) doubleValue]];

        return nil;
        
    } reverseBlock:^NSString *(NSDate *input)
    {
        return [NSString stringWithFormat:@"%g", [input timeIntervalSince1970]];
    }];
}

+ (NSValueTransformer *)UA_JSONTransformerForDouble {
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(id object)
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
	return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^ id (NSArray *nodes)
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
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *booleanString)
    {
        return @([booleanString boolValue]);

    } reverseBlock:^NSString *(NSNumber *boolObject)
    {
        return [boolObject isEqualToNumber:@(YES)] ? @"true" : @"false";
    }];
}

+ (NSValueTransformer *)UA_XMLTransformerForBooleanString
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSArray *nodes)
    {
        return @([[nodes[0] stringValue] boolValue]);

    } reverseBlock:^NSString *(NSNumber *boolObject)
    {
        return [boolObject isEqualToNumber:@(YES)] ? @"true" : @"false";
    }];
}

+ (NSValueTransformer *)UA_XMLTransformerForArrayOfStrings
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *nodes)
    {
        if (nodes == nil || ![nodes isKindOfClass:[NSArray class]])
            return nil;

        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[nodes count]];
        for (UADDXMLNode *node in nodes)
            [array addObject:[node stringValue]];
        
        return [array copy];
        
    } reverseBlock:^id(id obj)
    {
        return obj;
    }];
}

+ (NSValueTransformer *)UA_XMLTransformerForArrayOfNumbers
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *nodes)
    {
        if (nodes == nil || ![nodes isKindOfClass:[NSArray class]])
            return nil;

        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[nodes count]];
        for (UADDXMLNode *node in nodes)
            [array addObject:[NSNumber numberWithDouble:[[node stringValue] doubleValue]]];

        return [array copy];

    } reverseBlock:^id(id obj)
    {
        return obj;
    }];
}

+ (NSValueTransformer *)UA_XMLTransformerForArrayOfDatesWithFormat:(NSString *)dateFormat
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSArray *(NSArray *nodes)
    {
        if (nodes == nil || ![nodes isKindOfClass:[NSArray class]])
            return nil;

        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        dateFormatter.dateFormat = dateFormat;
        dateFormatter.timeZone = [NSTimeZone timeZoneWithName:@"UTC"];

        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[nodes count]];
        for (UADDXMLNode *node in nodes)
            [array addObject:[dateFormatter dateFromString:[node stringValue]]];
        
        return [array copy];
        
    } reverseBlock:^id(id obj)
    {
        return obj;
    }];
}

#pragma mark - Dictionary Transforming

+ (NSValueTransformer *)UA_JSONKeyValueTransformerWithKeyName:(NSString *)keyName valueName:(NSString *)valueName
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSDictionary *(id input)
    {
        if ([input isKindOfClass:[NSDictionary class]])
            return input;
        
        else if ([input isKindOfClass:[NSArray class]])
        {
            NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithCapacity:0];
            for (NSDictionary *item in (NSArray *)input)
                [dictionary setObject:[item objectForKey:valueName] forKey:[item objectForKey:keyName]];
            return [dictionary copy];
        }
        
        return nil;

    } reverseBlock:^NSArray *(NSDictionary *dictionary)
    {
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[dictionary count]];
        for (NSString *key in dictionary)
            [array addObject:@{ keyName: key, valueName: [dictionary objectForKey:key] }];
        return [array copy];
    }];
}

+ (NSValueTransformer *)UA_XMLKeyValueTransformerWithKeyName:(NSString *)keyName valueName:(NSString *)valueName
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSDictionary *(NSArray *nodes)
    {
        if (nodes == nil || [nodes count] == 0)
            return nil;

        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithCapacity:0];
        for (UADDXMLNode *node in nodes)
        {
            // Slightly dodgy, but we only really support key/value pairs like so: <element><key>xxx</key><value>yyy</value></element> (key/value elements can appear in either order)
            NSArray *children = node.children;
            if ([children count] != 2)
                continue;

            UADDXMLNode *first = children[0];
            UADDXMLNode *second = children[1];
            
            if ([first.localName isEqualToString:keyName])
                [dictionary setObject:[second stringValue] forKey:[first stringValue]];
            else
                [dictionary setObject:[first stringValue] forKey:[second stringValue]];
        }
        return [dictionary copy];
        
    } reverseBlock:^NSArray *(NSDictionary *dictionary)
    {
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:[dictionary count]];
        for (NSString *key in dictionary)
            [array addObject:@{ keyName: key, valueName: [dictionary objectForKey:key] }];
        return [array copy];
    }];
}

+ (NSValueTransformer *)UA_JSONDictionaryTransformerWithItemTransformer:(NSValueTransformer *)valueTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSDictionary *(NSDictionary *input)
    {
        if (input == nil || ![input isKindOfClass:[NSDictionary class]])
            return nil;
        
        // no mapping
        if (valueTransformer == nil)
            return input;
        
        NSMutableDictionary *output = [[NSMutableDictionary alloc] initWithCapacity:[input count]];
        for (id<NSCopying> key in output)
            [output setObject:([valueTransformer transformedValue:[input objectForKey:key]] ?: [NSNull null]) forKey:key];
        return [output copy];
            

    } reverseBlock:^NSDictionary *(NSDictionary *input)
    {
        if (input == nil || ![input isKindOfClass:[NSDictionary class]])
            return nil;

        // no mapping
        if (valueTransformer == nil)
            return input;

        NSMutableDictionary *output = [[NSMutableDictionary alloc] initWithCapacity:[input count]];
        for (id<NSCopying> key in output)
            [output setObject:([valueTransformer reverseTransformedValue:[input objectForKey:key]] ?: [NSNull null]) forKey:key];
        return [output copy];
    }];
}

+ (NSValueTransformer *)UA_ENUMTransformerWithValues:(NSArray *)values stringValues:(NSArray *)stringValues unknownValue:(NSNumber *)unknownValue
{
    NSParameterAssert(values != nil);
    NSParameterAssert(stringValues != nil);
    NSParameterAssert(unknownValue != nil);
    NSAssert([values count] == [stringValues count], @"Enum values and string values must have the same length.");

    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSNumber *(NSString *value)
    {
        if ([value isKindOfClass:[NSNumber class]])
            return (NSNumber *)value;
        
        NSUInteger index = [stringValues indexOfObject:value];
        if (index == NSNotFound)
            return unknownValue;
        
        return [values objectAtIndex:index];
        
    } reverseBlock:^NSString *(NSNumber *value)
    {
        NSUInteger index = [values indexOfObject:value];
        if (index == NSNotFound)
            return nil;
        
        return [stringValues objectAtIndex:index];
    }];
}

#pragma mark - DynamoDB Dictionary Transforming

+ (NSValueTransformer *)UA_JSONDynamoDBDictionaryTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^NSDictionary *(NSDictionary *input)
    {
        // DynamoDB dictionaries look something like this
        //
        // { "attributeName": { "type": value } }
        //
        // so a string attribute might be { "attribute": { "S": value } }
        //
        
        if (input == nil || ![input isKindOfClass:[NSDictionary class]])
            @throw [NSException exceptionWithName:UADDBParseError reason:@"Nil or non-dictionary input when attempting to forward transform a DynamoDB dictionary." userInfo:@{ UADDBParseErrorInputKey: (input == nil ? [NSNull null] : input) }];
        
        // lets code it over
        NSMutableDictionary *output = [[NSMutableDictionary alloc] initWithCapacity:[input count]];
        NSValueTransformer *transformer = [NSValueTransformer UA_JSONDynamoDBValueTransformer];
        for (NSString *attributeName in input)
        {
            id transformedValue = [transformer transformedValue:[input objectForKey:attributeName]];
            [output setObject:(transformedValue == nil ? [NSNull null] : transformedValue) forKey:attributeName];
        }
        
        // all done
        return [output copy];

    
    } reverseBlock:^NSDictionary *(NSDictionary *input)
    {
        if (input == nil || ![input isKindOfClass:[NSDictionary class]])
            @throw [NSException exceptionWithName:UADDBParseError reason:@"Nil or non-dictionary input when attempting to reverse transform a DynamoDB dictionary." userInfo:@{ UADDBParseErrorInputKey: (input == nil ? [NSNull null] : input) }];
        
        // lets go
        NSMutableDictionary *output = [[NSMutableDictionary alloc] initWithCapacity:[input count]];
        NSValueTransformer *transformer = [NSValueTransformer UA_JSONDynamoDBValueTransformer];
        for (NSString *attributeName in input)
        {
            id transformedValue = [transformer reverseTransformedValue:[input objectForKey:attributeName]];
            [output setObject:(transformedValue == nil ? [NSNull null] : transformedValue) forKey:attributeName];
        }
        
        // all done
        return [output copy];
    }];
}

+ (NSValueTransformer *)UA_JSONDynamoDBValueTransformer
{
    return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^id(NSDictionary *input)
    {
        // build the child dictionary based on the type, there should only be one type key in there
        if (input == nil || [input isEqual:[NSNull null]] || ![input isKindOfClass:[NSDictionary class]] || [input count] != 1)
        {
            @throw [NSException exceptionWithName:UADDBParseError
                                           reason:@"Unable to parse DynamoDB value. Attribute value is null, not a dictionary or contains too many attribute value types."
                                         userInfo:@{ UADDBParseErrorInputKey: input }];
        }
        
        // go the first
        NSString *key = [[input allKeys] firstObject];
        
        // strings
        if ([key isEqualToString:@"S"])
            return [input objectForKey:@"S"];
        
        else if ([key isEqualToString:@"N"])
        {
            NSString *value = [input objectForKey:@"N"];
            return [NSNumber numberWithDouble:[value doubleValue]];
            
        // base64 encoded string
        } else if ([key isEqualToString:@"B"])
        {
            NSString *value = [input objectForKey:@"B"];
            return [[NSData alloc] initWithBase64EncodedString:value options:kNilOptions];
            
        // an array of strings
        } else if ([key isEqualToString:@"SS"])
            return [input objectForKey:@"SS"];
        
        // an array of numbers
        else if ([key isEqualToString:@"NS"])
        {
            NSArray *values = [input objectForKey:@"NS"];
            NSMutableArray *numberValues = [[NSMutableArray alloc] initWithCapacity:[values count]];
            for (NSString *value in values)
                [numberValues addObject:[NSNumber numberWithDouble:[value doubleValue]]];
            return [numberValues copy];
            
        // an array of base64 encoded strings
        } else if ([key isEqualToString:@"BS"])
        {
            NSArray *values = [input objectForKey:@"BS"];
            NSMutableArray *dataValues = [[NSMutableArray alloc] initWithCapacity:[values count]];
            for (NSString *value in values)
                [dataValues addObject:[[NSData alloc] initWithBase64EncodedString:value options:kNilOptions]];
            return [dataValues copy];
            
        // what the heck is this?
        } else
        {
            @throw [NSException exceptionWithName:UADDBParseError
                                           reason:[NSString stringWithFormat:@"Unknown data type \"%@\" encountered when parsing attribute value.", key]
                                         userInfo:@{ UADDBParseErrorInputKey: input }];
        }
        
        // for completion
        return nil;

    } reverseBlock:^NSDictionary *(id input)
    {
        // strings! yay!
        if ([input isKindOfClass:[NSString class]])
            return @{ @"S": input };
        
        // numbers
        else if ([input isKindOfClass:[NSNumber class]])
            return @{ @"N": [NSString stringWithFormat:@"%g", [((NSNumber *)input) doubleValue]] };
        
        // binary datas
        else if ([input isKindOfClass:[NSData class]])
            return @{ @"B": [((NSData *)input) base64EncodedStringWithOptions:kNilOptions] };
        
        // arrays
        else if ([input isKindOfClass:[NSArray class]])
        {
            // nothing in there? we can't add an empty array to the output as we don't know the data type.
            if ([((NSArray *)input) count] == 0)
                return nil;
            
            NSArray *arrayValues = (NSArray *)input;
            
            // first, they need to be all the same class
            Class itemClass = [arrayValues.firstObject class];
            for (id item in arrayValues)
            {
                if (![item isKindOfClass:itemClass])
                {
                    @throw [NSException exceptionWithName:UADDBParseError
                                                   reason:@"Inconsistent class types found within NSArray of attribute value. All objects must be of the same type (NSString, NSNumber or NSData) in order to be transformable for DynamoDB."
                                                 userInfo:@{ UADDBParseErrorInputKey: input }];
                }
            }
            
            // all the same? great, lets add some strings
            if (itemClass == [NSString class])
                return @{ @"SS": arrayValues };
            
            // numbers? we'd best string 'em
            else if (itemClass == [NSNumber class])
            {
                NSMutableArray *values = [[NSMutableArray alloc] initWithCapacity:[arrayValues count]];
                for (NSNumber *v in arrayValues)
                    [values addObject:[NSString stringWithFormat:@"%g", [v doubleValue]]];
                return @{ @"NS": [values copy] };
                
            // binary data
            } else if (itemClass == [NSData class])
            {
                NSMutableArray *values = [[NSMutableArray alloc] initWithCapacity:[arrayValues count]];
                for (NSData *v in arrayValues)
                    [values addObject:[v base64EncodedStringWithOptions:kNilOptions]];
                return @{ @"BS": [values copy] };
                values = nil;
                
            // evil.
            } else
            {
                @throw [NSException exceptionWithName:UADDBParseError
                                               reason:@"Unknown data type encountered in NSArray of attribute \"%@\" when reverse transforming attribute value."
                                             userInfo:@{ UADDBParseErrorInputKey: input }];
            }
            
        // something evil?
        } else
        {
            @throw [NSException exceptionWithName:UADDBParseError
                                           reason:@"Unknown data type encountered when reverse transforming attribute \"%@\"."
                                         userInfo:@{ UADDBParseErrorInputKey: input }];
        }
        
        // for completion
        return nil;
    }];
}

@end
