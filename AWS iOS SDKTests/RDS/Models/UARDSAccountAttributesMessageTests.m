//
//  UARDSAccountAttributesMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSAccountAttributesMessage.h"
#import "UARDSAccountQuota.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSAccountAttributesMessageSpec)

describe(@"UARDSAccountAttributesMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSAccountAttributesMessage *accountAttributesMessage = [MTLXMLAdapter modelOfClass:[UARDSAccountAttributesMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[accountAttributesMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END