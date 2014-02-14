//
//  UAEC2InstanceInitiatedShutdownBehaviorTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2InstanceInitiatedShutdownBehavior.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2InstanceInitiatedShutdownBehaviorSpec)

describe(@"UAEC2InstanceInitiatedShutdownBehavior", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2InstanceInitiatedShutdownBehavior *instanceInitiatedShutdownBehavior = [MTLXMLAdapter modelOfClass:[UAEC2InstanceInitiatedShutdownBehavior class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[instanceInitiatedShutdownBehavior should] beNonNil];

	    // additional verification
	});

});

SPEC_END