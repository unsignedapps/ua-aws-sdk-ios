//
//  UAEC2CreateRouteTableResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateRouteTableResponse.h"
#import "UAEC2Route.h"
#import "UAEC2RouteTableAssociation.h"
#import "UAEC2Tag.h"
#import "UAEC2PropagatingVGW.h"
#import "UAEC2RouteTable.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateRouteTableResponseSpec)

describe(@"UAEC2CreateRouteTableResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateRouteTableResponse *createRouteTableResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateRouteTableResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createRouteTableResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END