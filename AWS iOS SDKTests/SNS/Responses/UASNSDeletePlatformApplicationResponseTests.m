//
//  UASNSDeletePlatformApplicationResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASNSDeletePlatformApplicationResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASNSDeletePlatformApplicationResponseSpec)

describe(@"UASNSDeletePlatformApplicationResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASNSDeletePlatformApplicationResponse *deletePlatformApplicationResponse = [MTLXMLAdapter modelOfClass:[UASNSDeletePlatformApplicationResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deletePlatformApplicationResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END