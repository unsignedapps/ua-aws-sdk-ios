//
//  UASQSReceiveMessageResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UASQSReceiveMessageResponse.h"
#import "UASQSMessage.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UASQSReceiveMessageResponseSpec)

describe(@"UASQSReceiveMessageResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UASQSReceiveMessageResponse *receiveMessageResponse = [MTLXMLAdapter modelOfClass:[UASQSReceiveMessageResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[receiveMessageResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END