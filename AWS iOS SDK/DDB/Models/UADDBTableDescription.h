//
//  UADDBTableDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UADDBModel.h"

@class UADDBAttributeDefinition, UADDBKeySchema, UADDBProvisionedThroughputDescription, UADDBLocalSecondaryIndexDescription, UADDBGlobalSecondaryIndexDescription;

@interface UADDBTableDescription : UADDBModel

@property (nonatomic, copy) NSArray *attributeDefinitions;
@property (nonatomic, copy) NSString *tableName;
@property (nonatomic, copy) NSArray *keySchema;
@property (nonatomic) UADDBTableStatus tableStatus;
@property (nonatomic, strong) NSDate *creationDateTime;
@property (nonatomic, copy) UADDBProvisionedThroughputDescription *provisionedThroughput;
@property (nonatomic, strong) NSNumber *tableSizeBytes;
@property (nonatomic, strong) NSNumber *itemCount;
@property (nonatomic, copy) NSArray *localSecondaryIndexes;
@property (nonatomic, copy) NSArray *globalSecondaryIndexes;

/**
 * Retrieves the UADDBAttributeDefinition at the specified index.
**/
- (UADDBAttributeDefinition *)attributeDefinitionAtIndex:(NSUInteger)index;

/**
 * Retrieves the UADDBKeySchema at the specified index.
**/
- (UADDBKeySchema *)keySchemaAtIndex:(NSUInteger)index;

/**
 * Retrieves the UADDBLocalSecondaryIndexDescription at the specified index.
**/
- (UADDBLocalSecondaryIndexDescription *)localSecondaryIndexAtIndex:(NSUInteger)index;

/**
 * Retrieves the UADDBGlobalSecondaryIndexDescription at the specified index.
**/
- (UADDBGlobalSecondaryIndexDescription *)globalSecondaryIndexAtIndex:(NSUInteger)index;

/**
 * Adds a AttributeDefinition to the attributeDefinitions property.
 *
 * This will initialise attributeDefinitions with an empty mutable array if necessary.
**/
- (void)addAttributeDefinition:(UADDBAttributeDefinition *)attributeDefinition;
/**
 * Adds a KeySchema to the keySchema property.
 *
 * This will initialise keySchema with an empty mutable array if necessary.
**/
- (void)addKeySchema:(UADDBKeySchema *)keySchema;
/**
 * Adds a LocalSecondaryIndex to the localSecondaryIndexes property.
 *
 * This will initialise localSecondaryIndexes with an empty mutable array if necessary.
**/
- (void)addLocalSecondaryIndex:(UADDBLocalSecondaryIndexDescription *)localSecondaryIndex;
/**
 * Adds a GlobalSecondaryIndex to the globalSecondaryIndexes property.
 *
 * This will initialise globalSecondaryIndexes with an empty mutable array if necessary.
**/
- (void)addGlobalSecondaryIndex:(UADDBGlobalSecondaryIndexDescription *)globalSecondaryIndex;

@end
