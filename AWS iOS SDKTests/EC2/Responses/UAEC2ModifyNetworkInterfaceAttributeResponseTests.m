//
//  UAEC2ModifyNetworkInterfaceAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ModifyNetworkInterfaceAttributeResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ModifyNetworkInterfaceAttributeResponseSpec)

describe(@"UAEC2ModifyNetworkInterfaceAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ModifyNetworkInterfaceAttributeResponse *modifyNetworkInterfaceAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2ModifyNetworkInterfaceAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[modifyNetworkInterfaceAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END