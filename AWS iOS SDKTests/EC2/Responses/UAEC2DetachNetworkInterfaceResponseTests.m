//
//  UAEC2DetachNetworkInterfaceResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DetachNetworkInterfaceResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DetachNetworkInterfaceResponseSpec)

describe(@"UAEC2DetachNetworkInterfaceResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DetachNetworkInterfaceResponse *detachNetworkInterfaceResponse = [MTLXMLAdapter modelOfClass:[UAEC2DetachNetworkInterfaceResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[detachNetworkInterfaceResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END