//
//  UASNSListEndpointsByPlatformApplicationResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASNSListEndpointsByPlatformApplicationResponse.h"
#import "UASNSEndpointAttributes.h"
#import "UASNSEndpoint.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASNSListEndpointsByPlatformApplicationResponseSpec)

describe(@"UASNSListEndpointsByPlatformApplicationResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASNSListEndpointsByPlatformApplicationResponse *listEndpointsByPlatformApplicationResponse = [MTLXMLAdapter modelOfClass:[UASNSListEndpointsByPlatformApplicationResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[listEndpointsByPlatformApplicationResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END