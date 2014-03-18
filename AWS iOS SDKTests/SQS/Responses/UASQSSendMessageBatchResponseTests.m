//
//  UASQSSendMessageBatchResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASQSSendMessageBatchResponse.h"
#import "UASQSSuccessful.h"
#import "UASQSFailed.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASQSSendMessageBatchResponseSpec)

describe(@"UASQSSendMessageBatchResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASQSSendMessageBatchResponse *sendMessageBatchResponse = [MTLXMLAdapter modelOfClass:[UASQSSendMessageBatchResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[sendMessageBatchResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END