//
//  UAEC2EBSInstanceBlockDeviceSpecificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2EBSInstanceBlockDeviceSpecification.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2EBSInstanceBlockDeviceSpecificationSpec)

describe(@"UAEC2EBSInstanceBlockDeviceSpecification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2EBSInstanceBlockDeviceSpecification *eBSInstanceBlockDeviceSpecification = [MTLXMLAdapter modelOfClass:[UAEC2EBSInstanceBlockDeviceSpecification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[eBSInstanceBlockDeviceSpecification should] beNonNil];

	    // additional verification
	});

});

SPEC_END