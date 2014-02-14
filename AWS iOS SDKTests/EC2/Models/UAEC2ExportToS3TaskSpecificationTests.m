//
//  UAEC2ExportToS3TaskSpecificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ExportToS3TaskSpecification.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ExportToS3TaskSpecificationSpec)

describe(@"UAEC2ExportToS3TaskSpecification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ExportToS3TaskSpecification *exportToS3TaskSpecification = [MTLXMLAdapter modelOfClass:[UAEC2ExportToS3TaskSpecification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[exportToS3TaskSpecification should] beNonNil];

	    // additional verification
	});

});

SPEC_END