//
//  UASNSGetSubscriptionAttributesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASNSGetSubscriptionAttributesResponse.h"
#import "UASNSSubscriptionAttributes.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASNSGetSubscriptionAttributesResponseSpec)

describe(@"UASNSGetSubscriptionAttributesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASNSGetSubscriptionAttributesResponse *getSubscriptionAttributesResponse = [MTLXMLAdapter modelOfClass:[UASNSGetSubscriptionAttributesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[getSubscriptionAttributesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END