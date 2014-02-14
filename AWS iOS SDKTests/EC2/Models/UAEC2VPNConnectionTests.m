//
//  UAEC2VPNConnectionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2VPNConnection.h"
#import "UAEC2Tag.h"
#import "UAEC2VGWTelemetry.h"
#import "UAEC2Options.h"
#import "UAEC2VPNStaticRoute.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2VPNConnectionSpec)

describe(@"UAEC2VPNConnection", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2VPNConnection *vPNConnection = [MTLXMLAdapter modelOfClass:[UAEC2VPNConnection class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[vPNConnection should] beNonNil];

	    // additional verification
	});

});

SPEC_END