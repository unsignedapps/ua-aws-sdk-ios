//
//  UAEC2BlockDeviceMappingTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2EBSBlockDevice.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2BlockDeviceMappingSpec)

describe(@"UAEC2BlockDeviceMapping", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2BlockDeviceMapping *blockDeviceMapping = [MTLXMLAdapter modelOfClass:[UAEC2BlockDeviceMapping class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[blockDeviceMapping should] beNonNil];

	    // additional verification
	});

});

SPEC_END