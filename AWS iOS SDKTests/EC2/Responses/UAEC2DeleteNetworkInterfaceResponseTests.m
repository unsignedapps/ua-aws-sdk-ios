//
//  UAEC2DeleteNetworkInterfaceResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DeleteNetworkInterfaceResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DeleteNetworkInterfaceResponseSpec)

describe(@"UAEC2DeleteNetworkInterfaceResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DeleteNetworkInterfaceResponse *deleteNetworkInterfaceResponse = [MTLXMLAdapter modelOfClass:[UAEC2DeleteNetworkInterfaceResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteNetworkInterfaceResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END