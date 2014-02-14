//
//  UAEC2AvailabilityZoneTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AvailabilityZone.h"
#import "UAEC2AvailabilityZoneMessage.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AvailabilityZoneSpec)

describe(@"UAEC2AvailabilityZone", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AvailabilityZone *availabilityZone = [MTLXMLAdapter modelOfClass:[UAEC2AvailabilityZone class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[availabilityZone should] beNonNil];

	    // additional verification
	});

});

SPEC_END