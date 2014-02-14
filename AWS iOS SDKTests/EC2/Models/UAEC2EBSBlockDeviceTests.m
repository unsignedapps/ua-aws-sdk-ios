//
//  UAEC2EBSBlockDeviceTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2EBSBlockDevice.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2EBSBlockDeviceSpec)

describe(@"UAEC2EBSBlockDevice", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2EBSBlockDevice *eBSBlockDevice = [MTLXMLAdapter modelOfClass:[UAEC2EBSBlockDevice class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[eBSBlockDevice should] beNonNil];

	    // additional verification
	});

});

SPEC_END