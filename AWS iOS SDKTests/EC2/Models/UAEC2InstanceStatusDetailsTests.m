//
//  UAEC2InstanceStatusDetailsTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2InstanceStatusDetails.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2InstanceStatusDetailsSpec)

describe(@"UAEC2InstanceStatusDetails", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2InstanceStatusDetails *instanceStatusDetails = [MTLXMLAdapter modelOfClass:[UAEC2InstanceStatusDetails class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[instanceStatusDetails should] beNonNil];

	    // additional verification
	});

});

SPEC_END