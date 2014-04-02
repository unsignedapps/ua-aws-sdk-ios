//
//  NSValueTransformer+UAValueTransformerAdditions.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import <Foundation/Foundation.h>

extern NSString * const UADDBParseError;
extern NSString * const UADDBParseErrorInputKey;

@interface NSValueTransformer (UAValueTransformerAdditions)

+ (NSValueTransformer *)UA_JSONTransformerForDateWithFormat:(NSString *)dateFormat;
+ (NSValueTransformer *)UA_JSONTransformerForUnixTimestamp;
+ (NSValueTransformer *)UA_JSONTransformerForDouble;
+ (NSValueTransformer *)UA_XMLTransformerForDouble;
+ (NSValueTransformer *)UA_JSONTransformerForBooleanString;

+ (NSValueTransformer *)UA_XMLTransformerForBooleanString;
+ (NSValueTransformer *)UA_XMLTransformerForArrayOfStrings;
+ (NSValueTransformer *)UA_XMLTransformerForArrayOfNumbers;
+ (NSValueTransformer *)UA_XMLTransformerForArrayOfDatesWithFormat:(NSString *)dateFormat;
+ (NSValueTransformer *)UA_JSONKeyValueTransformerWithKeyName:(NSString *)keyName valueName:(NSString *)valueName;
+ (NSValueTransformer *)UA_XMLKeyValueTransformerWithKeyName:(NSString *)keyName valueName:(NSString *)valueName;

+ (NSValueTransformer *)UA_JSONDictionaryTransformerWithItemTransformer:(NSValueTransformer *)valueTransformer;

+ (NSValueTransformer *)UA_ENUMTransformerWithValues:(NSArray *)values stringValues:(NSArray *)stringValues unknownValue:(NSNumber *)unknownValue;
+ (NSValueTransformer *)UA_ENUMArrayTransformerWithValues:(NSArray *)values stringValues:(NSArray *)stringValues unknownValue:(NSNumber *)unknownValue;

/**
 * Transforms a DynamoDB Attribute Value JSON dictionary to a properly typed dictionary.
 *
 * For example, something like this:
 *
 * {
 *      "name":     { "S": "John Citizen" },
 *      "number":   { "N": "1234" },
 *      "data":     { "B": "base64encodeddata" },
 *      "names":    { "SS": [ "John Citizen", "Jane Citizen" ] },
 *      "numbers":  { "NS": [ "1234", "5678" ] },
 *      "datas":    { "BS": [ "base64encodeddata", "anotherbaes64encodeddata" ] }
 * }
 *
 * should come out like this:
 *
 * @{
 *      @"name":    @"John Citizen",
 *      @"number":  @1234,
 *      @"data":    [NSData data],                          // base64 decoded
 *      @"names":   @[ @"John Citizen", @"Jane Citizen" ],
 *      @"numbers": @[ @1234, @5678 ],
 *      @"datas":   @[ [NSData data], [NSData data] ],      // base64 decoded
 * }
 *
 * Naturally, you can reverse the transformation.
 *
 * Warning: it will throw an exception with name UADDBParseError if the JSON dictionary cannot be parsed.
 * As per Apple's defintion, this is considered a programmer error and bad things could happen if the parsing
 * fails. When reversing the transformation, the exception can still be thrown if any of the supplied objects
 * are not NSString, NSNumber or NSData types, or subclasses thereof, or NSArray's containing same.
**/
+ (NSValueTransformer *)UA_JSONDynamoDBDictionaryTransformer;

/**
 * Transforms a DynamoDB value.
 *
 * Examples:
 *
 * Strings
 *  { "S": "John Citizen" }                         becomes     @"John Citizen"
 *  { "SS": [ "John Citizen", "Jane Citizen" ] }    becomes     @[ @"John Citizen", @"Jane Citizen" ]
 *
 * Numbers
 *  { "N": "1234" }                                 becomes     @1234
 *  { "NS": [ "1234", "5678" ] }                    becomes     @[ @1234, @5678 ]
 *
 * Binary Data:
 *  { "B": "base64data" }                           becomes     [NSData data]
 *  { "BS": [ "base64data", "morebase64" ] }        becomes     @[ [NSData data], [NSData data] ]
 *
 * This transformation is reversible.
 *
 * Warning: it will throw an exception with name UADDBParseError if any data types are unsupported. When
 * reversing the transformation your object must be a NSString, NSNumber or NSData class (or subclass).
**/
+ (NSValueTransformer *)UA_JSONDynamoDBValueTransformer;

@end
