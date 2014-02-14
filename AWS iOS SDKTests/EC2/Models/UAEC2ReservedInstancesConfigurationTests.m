//
//  UAEC2ReservedInstancesConfigurationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ReservedInstancesConfiguration.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReservedInstancesConfigurationSpec)

describe(@"UAEC2ReservedInstancesConfiguration", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ReservedInstancesConfiguration *reservedInstancesConfiguration = [MTLXMLAdapter modelOfClass:[UAEC2ReservedInstancesConfiguration class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reservedInstancesConfiguration should] beNonNil];

	    // additional verification
	});

});

SPEC_END