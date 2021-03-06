//
//  UAEC2DescribeVolumeAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeVolumeAttributeResponse.h"
#import "UAEC2AutoEnableIO.h"
#import "UAEC2ProductCode.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeVolumeAttributeResponseSpec)

describe(@"UAEC2DescribeVolumeAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeVolumeAttributeResponse *describeVolumeAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeVolumeAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeVolumeAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END