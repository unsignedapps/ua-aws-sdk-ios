//
//  UAEC2SpotInstanceStateFaultTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2SpotInstanceStateFault.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2SpotInstanceStateFaultSpec)

describe(@"UAEC2SpotInstanceStateFault", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2SpotInstanceStateFault *spotInstanceStateFault = [MTLXMLAdapter modelOfClass:[UAEC2SpotInstanceStateFault class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[spotInstanceStateFault should] beNonNil];

	    // additional verification
	});

});

SPEC_END