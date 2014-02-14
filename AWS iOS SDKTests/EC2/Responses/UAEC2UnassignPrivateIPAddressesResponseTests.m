//
//  UAEC2UnassignPrivateIPAddressesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2UnassignPrivateIPAddressesResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2UnassignPrivateIPAddressesResponseSpec)

describe(@"UAEC2UnassignPrivateIPAddressesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2UnassignPrivateIPAddressesResponse *unassignPrivateIPAddressesResponse = [MTLXMLAdapter modelOfClass:[UAEC2UnassignPrivateIPAddressesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[unassignPrivateIPAddressesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END