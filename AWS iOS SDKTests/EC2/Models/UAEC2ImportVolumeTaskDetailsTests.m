//
//  UAEC2ImportVolumeTaskDetailsTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ImportVolumeTaskDetails.h"
#import "UAEC2DiskImageDescription.h"
#import "UAEC2DiskImageVolumeDescription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ImportVolumeTaskDetailsSpec)

describe(@"UAEC2ImportVolumeTaskDetails", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ImportVolumeTaskDetails *importVolumeTaskDetails = [MTLXMLAdapter modelOfClass:[UAEC2ImportVolumeTaskDetails class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[importVolumeTaskDetails should] beNonNil];

	    // additional verification
	});

});

SPEC_END