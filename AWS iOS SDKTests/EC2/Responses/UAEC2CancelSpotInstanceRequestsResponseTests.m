//
//  UAEC2CancelSpotInstanceRequestsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CancelSpotInstanceRequestsResponse.h"
#import "UAEC2CancelledSpotInstanceRequest.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CancelSpotInstanceRequestsResponseSpec)

describe(@"UAEC2CancelSpotInstanceRequestsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CancelSpotInstanceRequestsResponse *cancelSpotInstanceRequestsResponse = [MTLXMLAdapter modelOfClass:[UAEC2CancelSpotInstanceRequestsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[cancelSpotInstanceRequestsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END