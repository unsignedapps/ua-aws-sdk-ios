//
//  UAEC2VPCPeeringConnectionStatusTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2VPCPeeringConnectionStatus.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2VPCPeeringConnectionStatusSpec)

describe(@"UAEC2VPCPeeringConnectionStatus", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2VPCPeeringConnectionStatus *vPCPeeringConnectionStatus = [MTLXMLAdapter modelOfClass:[UAEC2VPCPeeringConnectionStatus class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[vPCPeeringConnectionStatus should] beNonNil];

	    // additional verification
	});

});

SPEC_END