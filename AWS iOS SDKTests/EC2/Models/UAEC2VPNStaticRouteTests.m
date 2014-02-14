//
//  UAEC2VPNStaticRouteTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2VPNStaticRoute.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2VPNStaticRouteSpec)

describe(@"UAEC2VPNStaticRoute", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2VPNStaticRoute *vPNStaticRoute = [MTLXMLAdapter modelOfClass:[UAEC2VPNStaticRoute class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[vPNStaticRoute should] beNonNil];

	    // additional verification
	});

});

SPEC_END