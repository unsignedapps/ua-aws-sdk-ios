//
//  UAEC2SpotInstanceStatusTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2SpotInstanceStatus.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2SpotInstanceStatusSpec)

describe(@"UAEC2SpotInstanceStatus", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2SpotInstanceStatus *spotInstanceStatus = [MTLXMLAdapter modelOfClass:[UAEC2SpotInstanceStatus class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[spotInstanceStatus should] beNonNil];

	    // additional verification
	});

});

SPEC_END