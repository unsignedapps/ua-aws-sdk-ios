//
//  UASNSSetSubscriptionAttributesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASNSSetSubscriptionAttributesResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASNSSetSubscriptionAttributesResponseSpec)

describe(@"UASNSSetSubscriptionAttributesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASNSSetSubscriptionAttributesResponse *setSubscriptionAttributesResponse = [MTLXMLAdapter modelOfClass:[UASNSSetSubscriptionAttributesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[setSubscriptionAttributesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END