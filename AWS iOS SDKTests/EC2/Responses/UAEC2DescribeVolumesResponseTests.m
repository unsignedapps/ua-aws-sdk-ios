//
//  UAEC2DescribeVolumesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeVolumesResponse.h"
#import "UAEC2VolumeAttachment.h"
#import "UAEC2Tag.h"
#import "UAEC2Volume.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeVolumesResponseSpec)

describe(@"UAEC2DescribeVolumesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeVolumesResponse *describeVolumesResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeVolumesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeVolumesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END