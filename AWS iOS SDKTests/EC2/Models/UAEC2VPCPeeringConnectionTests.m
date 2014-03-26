//
//  UAEC2VPCPeeringConnectionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2VPCPeeringConnection.h"
#import "UAEC2AccepterVPCInfo.h"
#import "UAEC2RequesterVPCInfo.h"
#import "UAEC2VPCPeeringConnectionStatus.h"
#import "UAEC2Tag.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2VPCPeeringConnectionSpec)

describe(@"UAEC2VPCPeeringConnection", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2VPCPeeringConnection *vPCPeeringConnection = [MTLXMLAdapter modelOfClass:[UAEC2VPCPeeringConnection class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[vPCPeeringConnection should] beNonNil];

	    // additional verification
	});

});

SPEC_END