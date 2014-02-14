//
//  UAEC2AssociateRouteTableResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AssociateRouteTableResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AssociateRouteTableResponseSpec)

describe(@"UAEC2AssociateRouteTableResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AssociateRouteTableResponse *associateRouteTableResponse = [MTLXMLAdapter modelOfClass:[UAEC2AssociateRouteTableResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[associateRouteTableResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END