//
//  UAMTLModel.h
//  Mantle
//
//  Created by Justin Spahr-Summers on 2012-09-11.
//  Copyright (c) 2012 GitHub. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UAMTLModelProtocol.h"

// An abstract base class for model objects, using reflection to provide
// sensible default behaviors.
//
// The default implementations of <NSCopying>, -hash, and -isEqual: make use of
// the +propertyKeys method.
@interface UAMTLModel : NSObject <NSCopying, UAMTLModel>

@end


@interface UAMTLModel (Unavailable)

+ (instancetype)modelWithDictionary:(NSDictionary *)dictionaryValue __attribute__((deprecated("Replaced by +modelWithDictionary:error:")));
- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue __attribute__((deprecated("Replaced by -initWithDictionary:error:")));

+ (instancetype)modelWithExternalRepresentation:(NSDictionary *)externalRepresentation __attribute__((deprecated("Replaced by -[UAMTLJSONAdapter initWithJSONDictionary:modelClass:]")));
- (instancetype)initWithExternalRepresentation:(NSDictionary *)externalRepresentation __attribute__((deprecated("Replaced by -[UAMTLJSONAdapter initWithJSONDictionary:modelClass:]")));

@property (nonatomic, copy, readonly) NSDictionary *externalRepresentation __attribute__((deprecated("Replaced by UAMTLJSONAdapter.JSONDictionary")));

+ (NSDictionary *)externalRepresentationKeyPathsByPropertyKey __attribute__((deprecated("Replaced by +JSONKeyPathsByPropertyKey in <UAMTLJSONSerializing>")));
+ (NSValueTransformer *)transformerForKey:(NSString *)key __attribute__((deprecated("Replaced by +JSONTransformerForKey: in <UAMTLJSONSerializing>")));

+ (NSDictionary *)migrateExternalRepresentation:(NSDictionary *)externalRepresentation fromVersion:(NSUInteger)fromVersion __attribute__((deprecated("Replaced by -decodeValueForKey:withCoder:modelVersion:")));

@end
