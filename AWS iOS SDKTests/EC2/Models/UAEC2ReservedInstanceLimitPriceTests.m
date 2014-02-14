//
//  UAEC2ReservedInstanceLimitPriceTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ReservedInstanceLimitPrice.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReservedInstanceLimitPriceSpec)

describe(@"UAEC2ReservedInstanceLimitPrice", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ReservedInstanceLimitPrice *reservedInstanceLimitPrice = [MTLXMLAdapter modelOfClass:[UAEC2ReservedInstanceLimitPrice class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reservedInstanceLimitPrice should] beNonNil];

	    // additional verification
	});

});

SPEC_END