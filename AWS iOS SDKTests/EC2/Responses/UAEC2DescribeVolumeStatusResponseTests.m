//
//  UAEC2DescribeVolumeStatusResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeVolumeStatusResponse.h"
#import "UAEC2VolumeStatusDetail.h"
#import "UAEC2VolumeStatusInfo.h"
#import "UAEC2VolumeStatusEvent.h"
#import "UAEC2VolumeStatusAction.h"
#import "UAEC2VolumeStatus.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeVolumeStatusResponseSpec)

describe(@"UAEC2DescribeVolumeStatusResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeVolumeStatusResponse *describeVolumeStatusResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeVolumeStatusResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeVolumeStatusResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END