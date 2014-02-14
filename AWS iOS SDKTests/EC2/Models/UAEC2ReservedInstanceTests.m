//
//  UAEC2ReservedInstanceTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ReservedInstance.h"
#import "UAEC2Tag.h"
#import "UAEC2RecurringCharge.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReservedInstanceSpec)

describe(@"UAEC2ReservedInstance", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ReservedInstance *reservedInstance = [MTLXMLAdapter modelOfClass:[UAEC2ReservedInstance class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reservedInstance should] beNonNil];

	    // additional verification
	});

});

SPEC_END