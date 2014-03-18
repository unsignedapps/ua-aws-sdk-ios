//
//  UASQSSetQueueAttributesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASQSSetQueueAttributesResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASQSSetQueueAttributesResponseSpec)

describe(@"UASQSSetQueueAttributesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASQSSetQueueAttributesResponse *setQueueAttributesResponse = [MTLXMLAdapter modelOfClass:[UASQSSetQueueAttributesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[setQueueAttributesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END