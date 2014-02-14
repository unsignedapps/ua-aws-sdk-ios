//
//  UAEC2AttachNetworkInterfaceResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AttachNetworkInterfaceResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AttachNetworkInterfaceResponseSpec)

describe(@"UAEC2AttachNetworkInterfaceResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AttachNetworkInterfaceResponse *attachNetworkInterfaceResponse = [MTLXMLAdapter modelOfClass:[UAEC2AttachNetworkInterfaceResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[attachNetworkInterfaceResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END