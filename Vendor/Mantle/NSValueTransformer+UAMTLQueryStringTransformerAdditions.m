//
//  NSValueTransformer+UAMTLQueryStringTransformerAdditions.m
//  Mantle
//
//  Created by Rob Amos on 9/02/2014.
//  Copyright (c) 2014 GitHub. All rights reserved.
//

#import "NSValueTransformer+UAMTLQueryStringTransformerAdditions.h"
#import "UAMTLQueryAdapter.h"
#import "UAMTLModelProtocol.h"
#import "UAMTLValueTransformer.h"

@implementation NSValueTransformer (UAMTLQueryStringTransformerAdditions)

+ (NSValueTransformer *)UAMTL_QueryStringDictionaryTransformerWithModelClass:(Class)modelClass {
	NSParameterAssert([modelClass conformsToProtocol:@protocol(UAMTLModel)]);
	NSParameterAssert([modelClass conformsToProtocol:@protocol(UAMTLQuerySerializing)]);
	
	return [UAMTLValueTransformer
			reversibleTransformerWithForwardBlock:^ id (id dictionary) {
				
				NSAssert(NO, @"Forward serialization with query strings isn't supported yet.");
				return nil;
//				if (JSONDictionary == nil) return nil;
//				
//				NSAssert([JSONDictionary isKindOfClass:NSDictionary.class], @"Expected a dictionary, got: %@", JSONDictionary);
//				
//				return [UAMTLQueryAdapter modelOfClass:modelClass fromJSONDictionary:JSONDictionary error:NULL];
			}
			reverseBlock:^ id (id model) {
				if (model == nil) return nil;
				
				NSAssert([model conformsToProtocol:@protocol(UAMTLModel)], @"Expected a model object conforming to <UAMTLModel> object, got %@", model);
				NSAssert([model conformsToProtocol:@protocol(UAMTLQuerySerializing)], @"Expected a model object conforming to <UAMTLJSONSerializing>, got %@", model);
				
				UAMTLQueryAdapter *adapter = [[UAMTLQueryAdapter alloc] initWithModel:model];
				return [adapter dictionary];
			}];
}

+ (NSValueTransformer *)UAMTL_QueryStringArrayTransformerWithModelClass:(Class)modelClass {
	NSValueTransformer *dictionaryTransformer = [self UAMTL_QueryStringDictionaryTransformerWithModelClass:modelClass];
	
	return [UAMTLValueTransformer
			reversibleTransformerWithForwardBlock:^ id (NSArray *dictionaries) {
				
				NSAssert(NO, @"Forward serialization with query strings isn't supported yet.");
				return nil;
//				if (dictionaries == nil) return nil;
//				
//				NSAssert([dictionaries isKindOfClass:NSArray.class], @"Expected a array of dictionaries, got: %@", dictionaries);
//				
//				NSMutableArray *models = [NSMutableArray arrayWithCapacity:dictionaries.count];
//				for (id JSONDictionary in dictionaries) {
//					if (JSONDictionary == NSNull.null) {
//						[models addObject:NSNull.null];
//						continue;
//					}
//					
//					NSAssert([JSONDictionary isKindOfClass:NSDictionary.class], @"Expected a dictionary or an NSNull, got: %@", JSONDictionary);
//					
//					id model = [dictionaryTransformer transformedValue:JSONDictionary];
//					if (model == nil) continue;
//					
//					[models addObject:model];
//				}
//				
//				return models;
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

@end
