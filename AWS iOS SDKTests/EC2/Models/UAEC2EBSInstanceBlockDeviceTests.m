//
//  UAEC2EBSInstanceBlockDeviceTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2EBSInstanceBlockDevice.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2EBSInstanceBlockDeviceSpec)

describe(@"UAEC2EBSInstanceBlockDevice", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2EBSInstanceBlockDevice *eBSInstanceBlockDevice = [MTLXMLAdapter modelOfClass:[UAEC2EBSInstanceBlockDevice class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[eBSInstanceBlockDevice should] beNonNil];

	    // additional verification
	});

});

SPEC_END