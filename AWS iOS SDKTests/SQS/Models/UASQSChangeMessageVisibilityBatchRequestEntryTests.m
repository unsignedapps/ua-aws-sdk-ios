//
//  UASQSChangeMessageVisibilityBatchRequestEntryTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASQSChangeMessageVisibilityBatchRequestEntry.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASQSChangeMessageVisibilityBatchRequestEntrySpec)

describe(@"UASQSChangeMessageVisibilityBatchRequestEntry", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASQSChangeMessageVisibilityBatchRequestEntry *changeMessageVisibilityBatchRequestEntry = [MTLXMLAdapter modelOfClass:[UASQSChangeMessageVisibilityBatchRequestEntry class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[changeMessageVisibilityBatchRequestEntry should] beNonNil];

	    // additional verification
	});

});

SPEC_END