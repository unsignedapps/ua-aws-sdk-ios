//
//  UAEC2IAMInstanceProfileTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2IAMInstanceProfile.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2IAMInstanceProfileSpec)

describe(@"UAEC2IAMInstanceProfile", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2IAMInstanceProfile *iAMInstanceProfile = [MTLXMLAdapter modelOfClass:[UAEC2IAMInstanceProfile class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[iAMInstanceProfile should] beNonNil];

	    // additional verification
	});

});

SPEC_END