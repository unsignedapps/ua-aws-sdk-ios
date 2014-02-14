//
//  UAEC2ConversionTaskTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ConversionTask.h"
#import "UAEC2DiskImageDescription.h"
#import "UAEC2DiskImageVolume.h"
#import "UAEC2ImportInstanceVolumeDetailItem.h"
#import "UAEC2ImportInstanceTaskDetails.h"
#import "UAEC2DiskImageVolumeDescription.h"
#import "UAEC2ImportVolumeTaskDetails.h"
#import "UAEC2Tag.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ConversionTaskSpec)

describe(@"UAEC2ConversionTask", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ConversionTask *conversionTask = [MTLXMLAdapter modelOfClass:[UAEC2ConversionTask class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[conversionTask should] beNonNil];

	    // additional verification
	});

});

SPEC_END