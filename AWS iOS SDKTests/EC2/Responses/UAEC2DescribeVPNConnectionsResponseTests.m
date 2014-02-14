//
//  UAEC2DescribeVPNConnectionsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeVPNConnectionsResponse.h"
#import "UAEC2Tag.h"
#import "UAEC2VGWTelemetry.h"
#import "UAEC2Options.h"
#import "UAEC2VPNStaticRoute.h"
#import "UAEC2VPNConnection.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeVPNConnectionsResponseSpec)

describe(@"UAEC2DescribeVPNConnectionsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeVPNConnectionsResponse *describeVPNConnectionsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeVPNConnectionsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeVPNConnectionsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END