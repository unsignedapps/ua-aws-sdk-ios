//
//  UAEC2DisassociateRouteTableResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DisassociateRouteTableResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DisassociateRouteTableResponseSpec)

describe(@"UAEC2DisassociateRouteTableResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DisassociateRouteTableResponse *disassociateRouteTableResponse = [MTLXMLAdapter modelOfClass:[UAEC2DisassociateRouteTableResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[disassociateRouteTableResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END