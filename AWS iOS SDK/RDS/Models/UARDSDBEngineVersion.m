//
//  UARDSDBEngineVersion.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSDBEngineVersion.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSDefaultCharacterSet.h"
#import "UARDSSupportedCharacterSet.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSDBEngineVersion

@synthesize engine=_engine, engineVersion=_engineVersion, dBParameterGroupFamily=_dBParameterGroupFamily, dBEngineDescription=_dBEngineDescription, dBEngineVersionDescription=_dBEngineVersionDescription, defaultCharacterSet=_defaultCharacterSet, supportedCharacterSets=_supportedCharacterSets;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(supportedCharacterSetAtIndex:) propertyName:@"supportedCharacterSets"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addSupportedCharacterSet:) propertyName:@"supportedCharacterSets"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"engine": @"Rds:Engine",
        @"engineVersion": @"Rds:EngineVersion",
        @"dBParameterGroupFamily": @"Rds:DBParameterGroupFamily",
        @"dBEngineDescription": @"Rds:DBEngineDescription",
        @"dBEngineVersionDescription": @"Rds:DBEngineVersionDescription",
        @"defaultCharacterSet": @"Rds:DefaultCharacterSet",
        @"supportedCharacterSets": @"Rds:SupportedCharacterSets/Rds:CharacterSet"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)engineQueryStringTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
}

+ (NSValueTransformer *)defaultCharacterSetQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UARDSDefaultCharacterSet class]];
}

+ (NSValueTransformer *)supportedCharacterSetsQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSSupportedCharacterSet class]];
}

+ (NSValueTransformer *)engineXMLTransformer
{
    return [NSValueTransformer UA_ENUMTransformerWithValues:@[ @(UARDSEngineMySQL), @(UARDSEngineOrACLeSe1), @(UARDSEngineOrACLeSe), @(UARDSEngineOrACLeEe), @(UARDSEngineSqlserverEe), @(UARDSEngineSqlserverSe), @(UARDSEngineSqlserverEx), @(UARDSEngineSqlserverWeb), @(UARDSEnginePostgres) ]
                                               stringValues:@[ @"MySQL", @"oracle-se1", @"oracle-se", @"oracle-ee", @"sqlserver-ee", @"sqlserver-se", @"sqlserver-ex", @"sqlserver-web", @"postgres" ]
                                               unknownValue:@(UARDSEngineUnknown)];
}

+ (NSValueTransformer *)defaultCharacterSetXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLTransformerWithModelClass:[UARDSDefaultCharacterSet class]];
}

+ (NSValueTransformer *)supportedCharacterSetsXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSSupportedCharacterSet class]];
}

@end

#pragma clang diagnostic pop