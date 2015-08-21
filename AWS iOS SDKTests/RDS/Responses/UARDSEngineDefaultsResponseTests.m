//
//  UARDSEngineDefaultsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSEngineDefaultsResponse.h"
#import "UARDSParameter.h"
#import "UARDSEngineDefaults.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSEngineDefaultsResponseSpec)

describe(@"UARDSEngineDefaultsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSEngineDefaultsResponse *engineDefaultsResponse = [MTLXMLAdapter modelOfClass:[UARDSEngineDefaultsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[engineDefaultsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END