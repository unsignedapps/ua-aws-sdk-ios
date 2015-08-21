//
//  UARDSCertificateMessage.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UARDSCertificateMessage.h"
#import "UAAWSAdditionalAccessors.h"
#import "UARDSCertificate.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UARDSCertificateMessage

@synthesize certificates=_certificates, marker=_marker;

- (id)init
{
	if (self = [super init])
	{
		
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(certificateAtIndex:) propertyName:@"certificates"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addCertificate:) propertyName:@"certificates"];
	}
	return self;
}

+ (NSString *)XPathPrefix
{
    return @"./Rds:CertificateMessage/";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UARDSModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"certificates": @"Rds:Certificates/Rds:Certificate",
        @"marker": @"Rds:Marker"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)certificatesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UARDSCertificate class]];
}

+ (NSValueTransformer *)certificatesXMLTransformer
{
  return [NSValueTransformer UAMTL_XMLArrayTransformerWithModelClass:[UARDSCertificate class]];
}

@end

#pragma clang diagnostic pop