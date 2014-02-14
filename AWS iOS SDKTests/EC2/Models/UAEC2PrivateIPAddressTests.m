//
//  UAEC2PrivateIPAddressTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2PrivateIPAddress.h"
#import "UAEC2NetworkInterfaceAssociation.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2PrivateIPAddressSpec)

describe(@"UAEC2PrivateIPAddress", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2PrivateIPAddress *privateIPAddress = [MTLXMLAdapter modelOfClass:[UAEC2PrivateIPAddress class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[privateIPAddress should] beNonNil];

	    // additional verification
	});

});

SPEC_END