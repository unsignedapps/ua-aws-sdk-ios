//
//  UASNSGetEndpointAttributesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASNSGetEndpointAttributesResponse.h"
#import "UASNSEndpointAttributes.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASNSGetEndpointAttributesResponseSpec)

describe(@"UASNSGetEndpointAttributesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASNSGetEndpointAttributesResponse *getEndpointAttributesResponse = [MTLXMLAdapter modelOfClass:[UASNSGetEndpointAttributesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[getEndpointAttributesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END