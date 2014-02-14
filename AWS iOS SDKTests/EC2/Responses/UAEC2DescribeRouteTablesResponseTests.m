//
//  UAEC2DescribeRouteTablesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeRouteTablesResponse.h"
#import "UAEC2Route.h"
#import "UAEC2RouteTableAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2PropagatingVGW.h"
#import "UAEC2RouteTable.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeRouteTablesResponseSpec)

describe(@"UAEC2DescribeRouteTablesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeRouteTablesResponse *describeRouteTablesResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeRouteTablesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeRouteTablesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END