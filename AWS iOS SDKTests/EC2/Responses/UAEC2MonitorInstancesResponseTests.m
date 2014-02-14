//
//  UAEC2MonitorInstancesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2MonitorInstancesResponse.h"
#import "UAEC2Monitoring.h"
#import "UAEC2InstanceMonitoring.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2MonitorInstancesResponseSpec)

describe(@"UAEC2MonitorInstancesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2MonitorInstancesResponse *monitorInstancesResponse = [MTLXMLAdapter modelOfClass:[UAEC2MonitorInstancesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[monitorInstancesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END