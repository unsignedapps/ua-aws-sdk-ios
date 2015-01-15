//
//  NSValueTransformer+UAMTLXMLTransformerAdditions.h
//  Mantle
//
//  Created by Matthew Baranowski on 6/26/13.
//  Copyright (c) 2013 Matthew Baranowski. All rights reserved.
//

@import Foundation;

@interface NSValueTransformer (UAMTLXMLTransformerAdditions)

+ (NSValueTransformer *)UAMTL_XMLTransformerForInteger;
+ (NSValueTransformer *)UAMTL_XMLTransformerForURL;
+ (NSValueTransformer *)UAMTL_XMLTransformerForDateWithFormat:(NSString*)dateFormat;

+ (NSValueTransformer *)UAMTL_XMLTransformerWithModelClass:(Class)modelClass;
+ (NSValueTransformer *)UAMTL_XMLArrayTransformerWithModelClass:(Class)modelClass;
+ (NSValueTransformer *)UAMTL_XMLNonUniformObjectArrayTransformerWithModelClass:(Class)modelClass;

@end
