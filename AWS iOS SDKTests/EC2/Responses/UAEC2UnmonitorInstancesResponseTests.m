//
//  UAEC2UnmonitorInstancesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2UnmonitorInstancesResponse.h"
#import "UAEC2Monitoring.h"
#import "UAEC2InstanceMonitoring.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2UnmonitorInstancesResponseSpec)

describe(@"UAEC2UnmonitorInstancesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2UnmonitorInstancesResponse *unmonitorInstancesResponse = [MTLXMLAdapter modelOfClass:[UAEC2UnmonitorInstancesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[unmonitorInstancesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END