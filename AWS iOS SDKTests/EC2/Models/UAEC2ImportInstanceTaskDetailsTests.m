//
//  UAEC2ImportInstanceTaskDetailsTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ImportInstanceTaskDetails.h"
#import "UAEC2DiskImageDescription.h"
#import "UAEC2DiskImageVolume.h"
#import "UAEC2ImportInstanceVolumeDetailItem.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ImportInstanceTaskDetailsSpec)

describe(@"UAEC2ImportInstanceTaskDetails", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ImportInstanceTaskDetails *importInstanceTaskDetails = [MTLXMLAdapter modelOfClass:[UAEC2ImportInstanceTaskDetails class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[importInstanceTaskDetails should] beNonNil];

	    // additional verification
	});

});

SPEC_END