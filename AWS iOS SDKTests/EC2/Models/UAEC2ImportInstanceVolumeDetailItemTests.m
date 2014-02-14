//
//  UAEC2ImportInstanceVolumeDetailItemTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ImportInstanceVolumeDetailItem.h"
#import "UAEC2DiskImageDescription.h"
#import "UAEC2DiskImageVolume.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ImportInstanceVolumeDetailItemSpec)

describe(@"UAEC2ImportInstanceVolumeDetailItem", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ImportInstanceVolumeDetailItem *importInstanceVolumeDetailItem = [MTLXMLAdapter modelOfClass:[UAEC2ImportInstanceVolumeDetailItem class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[importInstanceVolumeDetailItem should] beNonNil];

	    // additional verification
	});

});

SPEC_END