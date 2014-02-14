//
//  UAEC2CancelledSpotInstanceRequestTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CancelledSpotInstanceRequest.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CancelledSpotInstanceRequestSpec)

describe(@"UAEC2CancelledSpotInstanceRequest", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CancelledSpotInstanceRequest *cancelledSpotInstanceRequest = [MTLXMLAdapter modelOfClass:[UAEC2CancelledSpotInstanceRequest class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[cancelledSpotInstanceRequest should] beNonNil];

	    // additional verification
	});

});

SPEC_END