//
//  UAEC2VolumeStatusTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2VolumeStatus.h"
#import "UAEC2VolumeStatusDetail.h"
#import "UAEC2VolumeStatusInfo.h"
#import "UAEC2VolumeStatusEvent.h"
#import "UAEC2VolumeStatusAction.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2VolumeStatusSpec)

describe(@"UAEC2VolumeStatus", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2VolumeStatus *volumeStatus = [MTLXMLAdapter modelOfClass:[UAEC2VolumeStatus class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[volumeStatus should] beNonNil];

	    // additional verification
	});

});

SPEC_END