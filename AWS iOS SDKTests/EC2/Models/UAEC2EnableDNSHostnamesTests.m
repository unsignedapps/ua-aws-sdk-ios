//
//  UAEC2EnableDNSHostnamesTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2EnableDNSHostnames.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2EnableDNSHostnamesSpec)

describe(@"UAEC2EnableDNSHostnames", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2EnableDNSHostnames *enableDNSHostnames = [MTLXMLAdapter modelOfClass:[UAEC2EnableDNSHostnames class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[enableDNSHostnames should] beNonNil];

	    // additional verification
	});

});

SPEC_END