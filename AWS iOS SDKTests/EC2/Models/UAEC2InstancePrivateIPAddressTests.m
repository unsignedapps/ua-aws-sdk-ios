//
//  UAEC2InstancePrivateIPAddressTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2InstancePrivateIPAddress.h"
#import "UAEC2InstanceNetworkInterfaceAssociation.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2InstancePrivateIPAddressSpec)

describe(@"UAEC2InstancePrivateIPAddress", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2InstancePrivateIPAddress *instancePrivateIPAddress = [MTLXMLAdapter modelOfClass:[UAEC2InstancePrivateIPAddress class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[instancePrivateIPAddress should] beNonNil];

	    // additional verification
	});

});

SPEC_END