//
//  UAEC2DeleteSpotDatafeedSubscriptionResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DeleteSpotDatafeedSubscriptionResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DeleteSpotDatafeedSubscriptionResponseSpec)

describe(@"UAEC2DeleteSpotDatafeedSubscriptionResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DeleteSpotDatafeedSubscriptionResponse *deleteSpotDatafeedSubscriptionResponse = [MTLXMLAdapter modelOfClass:[UAEC2DeleteSpotDatafeedSubscriptionResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteSpotDatafeedSubscriptionResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END