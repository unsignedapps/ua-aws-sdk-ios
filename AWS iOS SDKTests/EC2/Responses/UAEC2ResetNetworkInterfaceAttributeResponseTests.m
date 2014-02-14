//
//  UAEC2ResetNetworkInterfaceAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ResetNetworkInterfaceAttributeResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ResetNetworkInterfaceAttributeResponseSpec)

describe(@"UAEC2ResetNetworkInterfaceAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ResetNetworkInterfaceAttributeResponse *resetNetworkInterfaceAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2ResetNetworkInterfaceAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[resetNetworkInterfaceAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END