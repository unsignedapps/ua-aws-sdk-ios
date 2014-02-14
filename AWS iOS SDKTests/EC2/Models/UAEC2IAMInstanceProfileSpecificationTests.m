//
//  UAEC2IAMInstanceProfileSpecificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2IAMInstanceProfileSpecification.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2IAMInstanceProfileSpecificationSpec)

describe(@"UAEC2IAMInstanceProfileSpecification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2IAMInstanceProfileSpecification *iAMInstanceProfileSpecification = [MTLXMLAdapter modelOfClass:[UAEC2IAMInstanceProfileSpecification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[iAMInstanceProfileSpecification should] beNonNil];

	    // additional verification
	});

});

SPEC_END