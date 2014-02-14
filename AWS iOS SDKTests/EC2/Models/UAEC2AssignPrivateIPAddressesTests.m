//
//  UAEC2AssignPrivateIPAddressesTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AssignPrivateIPAddresses.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AssignPrivateIPAddressesSpec)

describe(@"UAEC2AssignPrivateIPAddresses", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AssignPrivateIPAddresses *assignPrivateIPAddresses = [MTLXMLAdapter modelOfClass:[UAEC2AssignPrivateIPAddresses class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[assignPrivateIPAddresses should] beNonNil];

	    // additional verification
	});

});

SPEC_END