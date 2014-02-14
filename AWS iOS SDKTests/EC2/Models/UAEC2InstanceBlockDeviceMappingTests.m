//
//  UAEC2InstanceBlockDeviceMappingTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2InstanceBlockDeviceMapping.h"
#import "UAEC2EBSInstanceBlockDevice.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2InstanceBlockDeviceMappingSpec)

describe(@"UAEC2InstanceBlockDeviceMapping", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2InstanceBlockDeviceMapping *instanceBlockDeviceMapping = [MTLXMLAdapter modelOfClass:[UAEC2InstanceBlockDeviceMapping class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[instanceBlockDeviceMapping should] beNonNil];

	    // additional verification
	});

});

SPEC_END