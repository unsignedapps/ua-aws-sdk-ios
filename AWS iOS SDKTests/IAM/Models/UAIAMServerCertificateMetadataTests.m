//
//  UAIAMServerCertificateMetadataTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAIAMServerCertificateMetadata.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAIAMServerCertificateMetadataSpec)

describe(@"UAIAMServerCertificateMetadata", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAIAMServerCertificateMetadata *serverCertificateMetadata = [MTLXMLAdapter modelOfClass:[UAIAMServerCertificateMetadata class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[serverCertificateMetadata should] beNonNil];

	    // additional verification
	});

});

SPEC_END