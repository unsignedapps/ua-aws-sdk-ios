//
//  UAMTLXMLAdapter.h
//  Mantle
//
//  Created by Matthew Baranowski on 6/5/13.
//  Copyright (c) 2013 Matthew Baranowski. All rights reserved.
//

@import Foundation;
#import "UADDXML.h"
#import "UADDXMLNode.h"
#import "UAMTLModelProtocol.h"

@protocol UAMTLXMLSerializing
@required
+ (NSDictionary *)XMLKeyPathsByPropertyKey;
+ (NSString*)XPathPrefix;
@optional
+ (Class)classForParsingXML:(UADDXMLNode *)xmlNode;
+ (NSValueTransformer *)JSONTransformerForKey:(NSString *)key;
+ (NSDictionary *)XMLNamespaceMappings;

// used for manual reverse serializing
- (UADDXMLElement *)serializeToXMLElement;

@end

@interface UAMTLXMLAdapter : NSObject

@property (nonatomic, strong, readonly) NSObject<UAMTLModel, UAMTLXMLSerializing> *model;

+ (id)modelOfClass:(Class)modelClass fromXMLNode:(UADDXMLNode *)xmlNode error:(NSError **)error;

+ (UADDXMLElement *)XMLElementFromModel:(NSObject<UAMTLModel, UAMTLXMLSerializing> *)model;

- (id)initWithXMLNode:(UADDXMLNode*)node modelClass:(Class)modelClass error:(NSError **)error;

- (id)initWithModel:(NSObject<UAMTLModel, UAMTLXMLSerializing> *)model;

- (UADDXMLElement *)XMLElement;

@end
