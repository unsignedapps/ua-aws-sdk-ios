//
//  UARDSEventCategoriesMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSEventCategoriesMessage.h"
#import "UARDSEventCategoriesMapList.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSEventCategoriesMessageSpec)

describe(@"UARDSEventCategoriesMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSEventCategoriesMessage *eventCategoriesMessage = [MTLXMLAdapter modelOfClass:[UARDSEventCategoriesMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[eventCategoriesMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END