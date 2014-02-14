//
//  UASNSPlatformApplicationAttributesTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASNSPlatformApplicationAttributes.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASNSPlatformApplicationAttributesSpec)

describe(@"UASNSPlatformApplicationAttributes", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASNSPlatformApplicationAttributes *platformApplicationAttributes = [MTLXMLAdapter modelOfClass:[UASNSPlatformApplicationAttributes class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[platformApplicationAttributes should] beNonNil];

	    // additional verification
	});

});

SPEC_END