//
//  UARDSEventSubscriptionResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSEventSubscriptionResponse.h"
#import "UARDSEventSubscription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSEventSubscriptionResponseSpec)

describe(@"UARDSEventSubscriptionResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSEventSubscriptionResponse *eventSubscriptionResponse = [MTLXMLAdapter modelOfClass:[UARDSEventSubscriptionResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[eventSubscriptionResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END