//
//  UAEC2DescribeSpotDatafeedSubscriptionResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeSpotDatafeedSubscriptionResponse.h"
#import "UAEC2Fault.h"
#import "UAEC2SpotDatafeedSubscription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeSpotDatafeedSubscriptionResponseSpec)

describe(@"UAEC2DescribeSpotDatafeedSubscriptionResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeSpotDatafeedSubscriptionResponse *describeSpotDatafeedSubscriptionResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeSpotDatafeedSubscriptionResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeSpotDatafeedSubscriptionResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END