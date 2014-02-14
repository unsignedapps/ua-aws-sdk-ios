//
//  UAEC2VPNGatewayTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2VPNGateway.h"
#import "UAEC2VPCAttachment.h"
#import "UAEC2Tag.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2VPNGatewaySpec)

describe(@"UAEC2VPNGateway", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2VPNGateway *vPNGateway = [MTLXMLAdapter modelOfClass:[UAEC2VPNGateway class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[vPNGateway should] beNonNil];

	    // additional verification
	});

});

SPEC_END