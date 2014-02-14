//
//  UAEC2RouteTableTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2RouteTable.h"
#import "UAEC2Route.h"
#import "UAEC2RouteTableAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2PropagatingVGW.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2RouteTableSpec)

describe(@"UAEC2RouteTable", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2RouteTable *routeTable = [MTLXMLAdapter modelOfClass:[UAEC2RouteTable class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[routeTable should] beNonNil];

	    // additional verification
	});

});

SPEC_END