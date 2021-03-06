//
//  UAMTLManagedObjectAdapter.h
//  Mantle
//
//  Created by Justin Spahr-Summers on 2013-03-29.
//  Copyright (c) 2013 GitHub. All rights reserved.
//

#import <CoreData/CoreData.h>
#import "UAMTLModelProtocol.h"

// A UAMTLModel object that supports being serialized to and from Core Data as an
// NSManagedObject.
@protocol UAMTLManagedObjectSerializing
@required

// The name of the Core Data entity that the receiver serializes to and
// deserializes from.
//
// This method must not return nil.
+ (NSString *)managedObjectEntityName;

// Specifies how to map property keys to different keys on the receiver's
// +managedObjectEntity.
//
// Entity attributes will be mapped to and from the receiver's properties using
// +entityAttributeTransformerForKey:. Entity relationships will be mapped to
// and from UAMTLModel objects using +relationshipModelClassesByPropertyKey.
// Fetched properties are not supported.
//
// Subclasses overriding this method should combine their values with those of
// `super`.
//
// Any property keys not present in the dictionary are assumed to match the
// entity key that should be used. Any keys associated with NSNull will not
// participate in managed object serialization.
//
// Returns a dictionary mapping property keys to entity keys (as strings) or
// NSNull values.
+ (NSDictionary *)managedObjectKeysByPropertyKey;

@optional

// Specifies a set of property keys used by the adapter to check for an already
// existing managed object when converting the UAMTLModel to its related
// NSManagedObject.
//
// The adapter will first map any keys provided by this method to the correct
// keys in managedObjectKeysByPropertyKey.
//
// The adapator will then perform a fetch request in the provided context for
// a managed object that matches the UAMTLModel's managedObjectEntityName and
// has equal values set for the property keys on the UAMTLModel.
//
// The managed object returned by the fetch request will then be set with all
// values from the UAMTLModel that the managed object is being converted from.
//
// If a property value of our UAMTLModel is yet another UAMTLModel which needs to be
// converted to a managed object, the class for that UAMTLModel can also implement
// this method to perform its own uniqing.
//
// For example:
// 1. An UAMTLModel subclass has id_number = 10.
// 2. An NSManagedObject accessible to the adapter's context has idnumber = 10.
// 3. managedObjectKeysByPropertyKey returns @{@"id_number" : @"idnumber"}
// 4. propertyKeysForManagedObjectUniquing returns
//    [NSSet setWithObject:@"id_number"];
// 5. Then our fetch request may return this managed object (or another managed
//    object with idnumber = 10).
//
// NOTE: If multiple managed objects follow the same uniquing criteria only one
// of them will be set with our UAMTLModel's values.
+ (NSSet *)propertyKeysForManagedObjectUniquing;

// Specifies how to convert the given property key to a managed object
// attribute. If reversible, the transformer will also be used to convert the
// managed object attribute back to the property.
//
// If the receiver implements a `+<key>EntityAttributeTransformer` method,
// UAMTLManagedObjectAdapter will use the result of that method instead.
//
// Returns a value transformer, or nil if no transformation should be performed.
+ (NSValueTransformer *)entityAttributeTransformerForKey:(NSString *)key;

// Specifies the UAMTLModel subclasses that should be deserialized to the
// receiver's property keys when a property key corresponds to an entity
// relationship.
//
// In other words, the dictionary returned by this method is used to decode
// managed object relationships into UAMTLModels (or NSArrays or NSSets thereof)
// set on the receiver.
//
// If a property key is omitted from the returned dictionary, but present in
// +managedObjectKeysByPropertyKey, and the receiver's +managedObjectEntity has
// a relationship at the corresponding key, an exception will be thrown during
// deserialization.
//
// Subclasses overriding this method should combine their values with those of
// `super`.
//
// Returns a dictionary mapping property keys to the Class objects that should
// be used.
+ (NSDictionary *)relationshipModelClassesByPropertyKey;

// Overridden to deserialize a different class instead of the receiver, based on
// information in the provided object.
//
// This is mostly useful for class clusters, where the abstract base class would
// be passed into +[UAMTLManagedObjectAdapter
// modelOfClass:fromManagedObject:error:], but a subclass should be instantiated
// instead.
//
// managedObject - The object that will be deserialized.
//
// Returns the class that should be instantiated (which may be the receiver), or
// nil to abort parsing (e.g., if the data is invalid).
+ (Class)classForDeserializingManagedObject:(NSManagedObject *)managedObject;

@end

// The domain for errors originating from UAMTLManagedObjectAdapter.
extern NSString * const UAMTLManagedObjectAdapterErrorDomain;

// +classForDeserializingManagedObject: returned nil for the given object.
extern const NSInteger UAMTLManagedObjectAdapterErrorNoClassFound;

// An NSManagedObject failed to initialize.
extern const NSInteger UAMTLManagedObjectAdapterErrorInitializationFailed;

// The managed object key specified by +managedObjectKeysByPropertyKey does not
// exist in the NSEntityDescription.
extern const NSInteger UAMTLManagedObjectAdapterErrorInvalidManagedObjectKey;

// The managed object property specified has a type that isn't supported by
// UAMTLManagedObjectAdapter.
extern const NSInteger UAMTLManagedObjectAdapterErrorUnsupportedManagedObjectPropertyType;

// The fetch request to find an exisiting managed object based on
// `+propertyKeysForManagedObjectUniquing` failed.
extern const NSInteger UAMTLManagedObjectAdapterErrorUniqueFetchRequestFailed;

// A UAMTLModel property cannot be serialized to or deserialized from an
// NSManagedObject relationship.
//
// For a to-one relationship, this means that the property does not contain
// a UAMTLModel, or the UAMTLModel does not conform to <UAMTLManagedObjectSerializing>.
//
// For a to-many relationship, this means that the property does not contain an
// NSArray or NSSet of UAMTLModel<UAMTLManagedObjectSerializing> instances.
extern const NSInteger UAMTLManagedObjectAdapterErrorUnsupportedRelationshipClass;

// Converts a UAMTLModel object to and from an NSManagedObject.
@interface UAMTLManagedObjectAdapter : NSObject

// Attempts to deserialize an NSManagedObject into a UAMTLModel object.
//
// modelClass    - The UAMTLModel subclass to return. This class must conform to
//                 <UAMTLManagedObjectSerializing>. This argument must not be nil.
// managedObject - The managed object to deserialize. If this argument is nil,
//                 the method returns nil.
// error         - If not NULL, this may be set to an error that occurs during
//                 deserialization or initializing an instance of `modelClass`.
//
// Returns an instance of `modelClass` upon success, or nil if an error
// occurred.
+ (id)modelOfClass:(Class)modelClass fromManagedObject:(NSManagedObject *)managedObject error:(NSError **)error;

// Serializes a UAMTLModel into an NSManagedObject.
//
// model   - The model object to serialize. This argument must not be nil.
// context - The context into which to insert the created managed object. This
//           argument must not be nil.
// error   - If not NULL, this may be set to an error that occurs during
//           serialization or insertion.
+ (id)managedObjectFromModel:(NSObject<NSObject, UAMTLModel, UAMTLManagedObjectSerializing> *)model insertingIntoContext:(NSManagedObjectContext *)context error:(NSError **)error;

@end
