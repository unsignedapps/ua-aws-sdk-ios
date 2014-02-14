//
//  UAEC2SpotDatafeedSubscriptionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2SpotDatafeedSubscription.h"
#import "UAEC2Fault.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2SpotDatafeedSubscriptionSpec)

describe(@"UAEC2SpotDatafeedSubscription", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2SpotDatafeedSubscription *spotDatafeedSubscription = [MTLXMLAdapter modelOfClass:[UAEC2SpotDatafeedSubscription class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[spotDatafeedSubscription should] beNonNil];

	    // additional verification
	});

});

SPEC_END