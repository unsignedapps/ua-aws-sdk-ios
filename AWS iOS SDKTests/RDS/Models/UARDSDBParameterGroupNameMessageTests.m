//
//  UARDSDBParameterGroupNameMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBParameterGroupNameMessage.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBParameterGroupNameMessageSpec)

describe(@"UARDSDBParameterGroupNameMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBParameterGroupNameMessage *dBParameterGroupNameMessage = [MTLXMLAdapter modelOfClass:[UARDSDBParameterGroupNameMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBParameterGroupNameMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END