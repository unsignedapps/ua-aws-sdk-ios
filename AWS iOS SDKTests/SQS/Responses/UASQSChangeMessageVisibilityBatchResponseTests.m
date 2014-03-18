//
//  UASQSChangeMessageVisibilityBatchResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASQSChangeMessageVisibilityBatchResponse.h"
#import "UASQSSuccessful.h"
#import "UASQSFailed.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASQSChangeMessageVisibilityBatchResponseSpec)

describe(@"UASQSChangeMessageVisibilityBatchResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASQSChangeMessageVisibilityBatchResponse *changeMessageVisibilityBatchResponse = [MTLXMLAdapter modelOfClass:[UASQSChangeMessageVisibilityBatchResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[changeMessageVisibilityBatchResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END