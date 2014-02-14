//
//  UAEC2TerminateInstancesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2TerminateInstancesResponse.h"
#import "UAEC2InstanceStateChange.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2TerminateInstancesResponseSpec)

describe(@"UAEC2TerminateInstancesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2TerminateInstancesResponse *terminateInstancesResponse = [MTLXMLAdapter modelOfClass:[UAEC2TerminateInstancesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[terminateInstancesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END