//
//  NSValueTransformer+UAValueTransformerAdditions.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import <Foundation/Foundation.h>

@interface NSValueTransformer (UAValueTransformerAdditions)

+ (NSValueTransformer *)UA_JSONTransformerForDateWithFormat:(NSString*)dateFormat;
+ (NSValueTransformer *)UA_JSONTransformerForDouble;
+ (NSValueTransformer *)UA_XMLTransformerForDouble;
+ (NSValueTransformer *)UA_JSONTransformerForBooleanString;

+ (NSValueTransformer *)UA_XMLTransformerForBooleanString;
+ (NSValueTransformer *)UA_XMLTransformerForArrayOfStrings;
+ (NSValueTransformer *)UA_XMLTransformerForArrayOfNumbers;
+ (NSValueTransformer *)UA_XMLTransformerForArrayOfDatesWithFormat:(NSString *)dateFormat;
+ (NSValueTransformer *)UA_JSONKeyValueTransformer;
+ (NSValueTransformer *)UA_XMLKeyValueTransformer;

@end
