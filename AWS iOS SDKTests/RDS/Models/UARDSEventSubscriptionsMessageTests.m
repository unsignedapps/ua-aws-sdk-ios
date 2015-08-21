//
//  UARDSEventSubscriptionsMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSEventSubscriptionsMessage.h"
#import "UARDSEventSubscriptionsList.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSEventSubscriptionsMessageSpec)

describe(@"UARDSEventSubscriptionsMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSEventSubscriptionsMessage *eventSubscriptionsMessage = [MTLXMLAdapter modelOfClass:[UARDSEventSubscriptionsMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[eventSubscriptionsMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END