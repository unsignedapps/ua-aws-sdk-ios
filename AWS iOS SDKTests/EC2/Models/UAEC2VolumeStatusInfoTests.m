//
//  UAEC2VolumeStatusInfoTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2VolumeStatusInfo.h"
#import "UAEC2VolumeStatusDetail.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2VolumeStatusInfoSpec)

describe(@"UAEC2VolumeStatusInfo", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2VolumeStatusInfo *volumeStatusInfo = [MTLXMLAdapter modelOfClass:[UAEC2VolumeStatusInfo class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[volumeStatusInfo should] beNonNil];

	    // additional verification
	});

});

SPEC_END