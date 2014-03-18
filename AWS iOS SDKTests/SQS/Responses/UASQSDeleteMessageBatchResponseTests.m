//
//  UASQSDeleteMessageBatchResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASQSDeleteMessageBatchResponse.h"
#import "UASQSSuccessful.h"
#import "UASQSFailed.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASQSDeleteMessageBatchResponseSpec)

describe(@"UASQSDeleteMessageBatchResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASQSDeleteMessageBatchResponse *deleteMessageBatchResponse = [MTLXMLAdapter modelOfClass:[UASQSDeleteMessageBatchResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[deleteMessageBatchResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END