//
//  UARDSOptionGroupOptionsMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSOptionGroupOptionsMessage.h"
#import "UARDSOptionGroupOptionSetting.h"
#import "UARDSOptionGroupOption.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSOptionGroupOptionsMessageSpec)

describe(@"UARDSOptionGroupOptionsMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSOptionGroupOptionsMessage *optionGroupOptionsMessage = [MTLXMLAdapter modelOfClass:[UARDSOptionGroupOptionsMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[optionGroupOptionsMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END