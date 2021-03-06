//
//  UAMTLModelProtocol.h
//  Mantle
//
//  Created by Rob Amos on 3/02/2014.
//  Copyright (c) 2014 GitHub. All rights reserved.
//

@protocol UAMTLModel <NSObject, NSCopying>

// Returns a new instance of the receiver initialized using
// -initWithDictionary:error:.
+ (instancetype)modelWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error;

// Initializes the receiver with default values.
//
// This is the designated initializer for this class.
- (instancetype)init;

// Initializes the receiver using key-value coding, setting the keys and values
// in the given dictionary.
//
// dictionaryValue - Property keys and values to set on the receiver. Any NSNull
//                   values will be converted to nil before being used. KVC
//                   validation methods will automatically be invoked for all of
//                   the properties given. If nil, this method is equivalent to
//                   -init.
// error           - If not NULL, this may be set to any error that occurs
//                   (like a KVC validation error).
//
// Returns an initialized model object, or nil if validation failed.
- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error;

// Returns the keys for all @property declarations, except for `readonly`
// properties without ivars, or properties on UAMTLModel itself.
+ (NSSet *)propertyKeys;

// A dictionary representing the properties of the receiver.
//
// The default implementation combines the values corresponding to all
// +propertyKeys into a dictionary, with any nil values represented by NSNull.
//
// This property must never be nil.
@property (nonatomic, copy, readonly) NSDictionary *dictionaryValue;

// Merges the value of the given key on the receiver with the value of the same
// key from the given model object, giving precedence to the other model object.
//
// By default, this method looks for a `-merge<Key>FromModel:` method on the
// receiver, and invokes it if found. If not found, and `model` is not nil, the
// value for the given key is taken from `model`.
- (void)mergeValueForKey:(NSString *)key fromModel:(NSObject <UAMTLModel> *)model;

// Merges the values of the given model object into the receiver, using
// -mergeValueForKey:fromModel: for each key in +propertyKeys.
//
// `model` must be an instance of the receiver's class or a subclass thereof.
- (void)mergeValuesForKeysFromModel:(NSObject<UAMTLModel> *)model;

// Compares the receiver with another object for equality.
//
// The default implementation is equivalent to comparing both models'
// -dictionaryValue.
//
// Note that this may lead to infinite loops if the receiver holds a circular
// reference to another UAMTLModel and both use the default behavior.
// It is recommended to override -isEqual: in this scenario.
- (BOOL)isEqual:(id)object;

// A string that describes the contents of the receiver.
//
// The default implementation is based on the receiver's class and its
// -dictionaryValue.
//
// Note that this may lead to infinite loops if the receiver holds a circular
// reference to another UAMTLModel and both use the default behavior.
// It is recommended to override -description in this scenario.
- (NSString *)description;

// Validates the model.
//
// The default implementation simply invokes -validateValue:forKey:error: with
// all +propertyKeys and their current value. If -validateValue:forKey:error:
// returns a new value, the property is set to that new value.
//
// error - If not NULL, this may be set to any error that occurs during
//         validation
//
// Returns YES if the model is valid, or NO if the validation failed.
- (BOOL)validate:(NSError **)error;

@optional

- (BOOL)canSerializePropertyKey:(NSString *)key;

@end