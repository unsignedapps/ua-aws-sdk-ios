//
//  UARDSDBEngineVersionMessageTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBEngineVersionMessage.h"
#import "UARDSDefaultCharacterSet.h"
#import "UARDSSupportedCharacterSet.h"
#import "UARDSDBEngineVersion.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBEngineVersionMessageSpec)

describe(@"UARDSDBEngineVersionMessage", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBEngineVersionMessage *dBEngineVersionMessage = [MTLXMLAdapter modelOfClass:[UARDSDBEngineVersionMessage class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBEngineVersionMessage should] beNonNil];

	    // additional verification
	});

});

SPEC_END