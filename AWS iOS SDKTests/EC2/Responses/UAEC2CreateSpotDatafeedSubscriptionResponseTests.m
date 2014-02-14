//
//  UAEC2CreateSpotDatafeedSubscriptionResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateSpotDatafeedSubscriptionResponse.h"
#import "UAEC2Fault.h"
#import "UAEC2SpotDatafeedSubscription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateSpotDatafeedSubscriptionResponseSpec)

describe(@"UAEC2CreateSpotDatafeedSubscriptionResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateSpotDatafeedSubscriptionResponse *createSpotDatafeedSubscriptionResponse = [MTLXMLAdapter modelOfClass:[UAEC2CreateSpotDatafeedSubscriptionResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createSpotDatafeedSubscriptionResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END