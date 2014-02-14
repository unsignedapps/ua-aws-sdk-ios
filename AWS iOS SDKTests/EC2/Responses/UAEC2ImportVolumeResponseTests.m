//
//  UAEC2ImportVolumeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ImportVolumeResponse.h"
#import "UAEC2DiskImageDescription.h"
#import "UAEC2DiskImageVolumeDescription.h"
#import "UAEC2ImportInstanceVolumeDetailItem.h"
#import "UAEC2ImportInstanceTaskDetails.h"
#import "UAEC2ImportVolumeTaskDetails.h"
#import "UAEC2Tag.h"
#import "UAEC2ConversionTask.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ImportVolumeResponseSpec)

describe(@"UAEC2ImportVolumeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ImportVolumeResponse *importVolumeResponse = [MTLXMLAdapter modelOfClass:[UAEC2ImportVolumeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[importVolumeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END