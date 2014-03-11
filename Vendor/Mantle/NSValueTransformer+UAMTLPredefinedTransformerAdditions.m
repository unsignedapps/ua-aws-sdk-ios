//
//  NSValueTransformer+UAMTLPredefinedTransformerAdditions.m
//  Mantle
//
//  Created by Justin Spahr-Summers on 2012-09-27.
//  Copyright (c) 2012 GitHub. All rights reserved.
//

#import "NSValueTransformer+UAMTLPredefinedTransformerAdditions.h"
#import "UAMTLJSONAdapter.h"
#import "UAMTLModelProtocol.h"
#import "UAMTLValueTransformer.h"

NSString * const UAMTLURLValueTransformerName = @"UAMTLURLValueTransformerName";
NSString * const UAMTLBooleanValueTransformerName = @"UAMTLBooleanValueTransformerName";

@implementation NSValueTransformer (UAMTLPredefinedTransformerAdditions)

#pragma mark Category Loading

+ (void)load {
	@autoreleasepool {
		UAMTLValueTransformer *URLValueTransformer = [UAMTLValueTransformer
			reversibleTransformerWithForwardBlock:^ id (NSString *str) {
				if (![str isKindOfClass:NSString.class]) return nil;
				return [NSURL URLWithString:str];
			}
			reverseBlock:^ id (NSURL *URL) {
				if (![URL isKindOfClass:NSURL.class]) return nil;
				return URL.absoluteString;
			}];
		
		[NSValueTransformer setValueTransformer:URLValueTransformer forName:UAMTLURLValueTransformerName];

		UAMTLValueTransformer *booleanValueTransformer = [UAMTLValueTransformer
			reversibleTransformerWithBlock:^ id (NSNumber *boolean) {
				if (![boolean isKindOfClass:NSNumber.class]) return nil;
				return (NSNumber *)(boolean.boolValue ? kCFBooleanTrue : kCFBooleanFalse);
			}];

		[NSValueTransformer setValueTransformer:booleanValueTransformer forName:UAMTLBooleanValueTransformerName];
	}
}

#pragma mark Customizable Transformers

+ (NSValueTransformer *)UAMTL_JSONDictionaryTransformerWithModelClass:(Class)modelClass {
	NSParameterAssert([modelClass conformsToProtocol:@protocol(UAMTLModel)]);
	NSParameterAssert([modelClass conformsToProtocol:@protocol(UAMTLJSONSerializing)]);

	return [UAMTLValueTransformer
		reversibleTransformerWithForwardBlock:^ id (id JSONDictionary) {
			if (JSONDictionary == nil) return nil;

			NSAssert([JSONDictionary isKindOfClass:NSDictionary.class], @"Expected a dictionary, got: %@", JSONDictionary);

			return [UAMTLJSONAdapter modelOfClass:modelClass fromJSONDictionary:JSONDictionary error:NULL];
		}
		reverseBlock:^ id (id model) {
			if (model == nil) return nil;

			NSAssert([model conformsToProtocol:@protocol(UAMTLModel)], @"Expected a model object conforming to <UAMTLModel> object, got %@", model);
			NSAssert([model conformsToProtocol:@protocol(UAMTLJSONSerializing)], @"Expected a model object conforming to <UAMTLJSONSerializing>, got %@", model);

			return [UAMTLJSONAdapter JSONDictionaryFromModel:model];
		}];
}

+ (NSValueTransformer *)UAMTL_JSONArrayTransformerWithModelClass:(Class)modelClass {
	NSValueTransformer *dictionaryTransformer = [self UAMTL_JSONDictionaryTransformerWithModelClass:modelClass];

	return [UAMTLValueTransformer
		reversibleTransformerWithForwardBlock:^ id (NSArray *dictionaries) {
			if (dictionaries == nil) return nil;

			NSAssert([dictionaries isKindOfClass:NSArray.class], @"Expected a array of dictionaries, got: %@", dictionaries);

			NSMutableArray *models = [NSMutableArray arrayWithCapacity:dictionaries.count];
			for (id JSONDictionary in dictionaries) {
				if (JSONDictionary == NSNull.null) {
					[models addObject:NSNull.null];
					continue;
				}

				NSAssert([JSONDictionary isKindOfClass:NSDictionary.class], @"Expected a dictionary or an NSNull, got: %@", JSONDictionary);

				id model = [dictionaryTransformer transformedValue:JSONDictionary];
				if (model == nil) continue;

				[models addObject:model];
			}

			return models;
		}
		reverseBlock:^ id (NSArray *models) {
			if (models == nil) return nil;

			NSAssert([models isKindOfClass:NSArray.class], @"Expected a array of UAMTLModels, got: %@", models);

			NSMutableArray *dictionaries = [NSMutableArray arrayWithCapacity:models.count];
			for (id model in models) {
				if (model == NSNull.null) {
					[dictionaries addObject:NSNull.null];
					continue;
				}

				NSAssert([model conformsToProtocol:@protocol(UAMTLModel)], @"Expected a model object conforming to UAMTLModel or an NSNull, got: %@", model);

				NSDictionary *dict = [dictionaryTransformer reverseTransformedValue:model];
				if (dict == nil) continue;

				[dictionaries addObject:dict];
			}

			return dictionaries;
		}];
}

+ (NSValueTransformer *)UAMTL_valueMappingTransformerWithDictionary:(NSDictionary *)dictionary {
	NSParameterAssert(dictionary != nil);
	NSParameterAssert(dictionary.count == [[NSSet setWithArray:dictionary.allValues] count]);

	return [UAMTLValueTransformer reversibleTransformerWithForwardBlock:^(id<NSCopying> key) {
		return dictionary[key ?: NSNull.null];
	} reverseBlock:^(id object) {
		__block id result = nil;
		[dictionary enumerateKeysAndObjectsUsingBlock:^(id key, id anObject, BOOL *stop) {
			if ([object isEqual:anObject]) {
				result = key;
				*stop = YES;
			}
		}];
		return result;
	}];
}

@end
