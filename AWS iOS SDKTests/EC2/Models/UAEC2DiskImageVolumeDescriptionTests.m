//
//  UAEC2DiskImageVolumeDescriptionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DiskImageVolumeDescription.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DiskImageVolumeDescriptionSpec)

describe(@"UAEC2DiskImageVolumeDescription", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DiskImageVolumeDescription *diskImageVolumeDescription = [MTLXMLAdapter modelOfClass:[UAEC2DiskImageVolumeDescription class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[diskImageVolumeDescription should] beNonNil];

	    // additional verification
	});

});

SPEC_END