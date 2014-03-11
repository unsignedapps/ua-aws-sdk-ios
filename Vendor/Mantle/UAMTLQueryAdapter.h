//
//  UAMTLQueryAdapter.h
//  Mantle
//
//  Created by Robert Amos on 01/02/2014.
//  Copyright (c) 2014 Robert Amos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UAMTLModelProtocol.h"

@protocol UAMTLQuerySerializing

@required

+ (NSDictionary *)queryStringKeyPathsByPropertyKey;

@optional

+ (NSValueTransformer *)queryStringTransformerForKey:(NSString *)key;

@end

@interface UAMTLQueryAdapter : NSObject

@property (nonatomic, strong, readonly) NSObject<UAMTLModel, UAMTLQuerySerializing> *model;

//+ (id)modelOfClass:(Class)modelClass fromQueryString:(NSString *)queryString error:(NSError **)error;

+ (NSString *)queryStringFromModel:(NSObject<UAMTLModel, UAMTLQuerySerializing> *)model;

//- (id)initWithQueryString:(NSString *)querystring modelClass:(Class)modelClass error:(NSError **)error;

- (id)initWithModel:(NSObject<UAMTLModel, UAMTLQuerySerializing> *)model;

- (NSDictionary *)dictionary;
- (NSString *)queryString;

@end
