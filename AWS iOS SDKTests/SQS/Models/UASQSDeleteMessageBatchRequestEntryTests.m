//
//  UASQSDeleteMessageBatchRequestEntryTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASQSDeleteMessageBatchRequestEntry.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASQSDeleteMessageBatchRequestEntrySpec)

describe(@"UASQSDeleteMessageBatchRequestEntry", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASQSDeleteMessageBatchRequestEntry *deleteMessageBatchRequestEntry = [MTLXMLAdapter modelOfClass:[UASQSDeleteMessageBatchRequestEntry class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteMessageBatchRequestEntry should] beNonNil];

	    // additional verification
	});

});

SPEC_END