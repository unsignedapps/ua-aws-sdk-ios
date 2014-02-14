//
//  UAEC2ImportInstanceLaunchSpecificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ImportInstanceLaunchSpecification.h"
#import "UAEC2Placement.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ImportInstanceLaunchSpecificationSpec)

describe(@"UAEC2ImportInstanceLaunchSpecification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ImportInstanceLaunchSpecification *importInstanceLaunchSpecification = [MTLXMLAdapter modelOfClass:[UAEC2ImportInstanceLaunchSpecification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[importInstanceLaunchSpecification should] beNonNil];

	    // additional verification
	});

});

SPEC_END