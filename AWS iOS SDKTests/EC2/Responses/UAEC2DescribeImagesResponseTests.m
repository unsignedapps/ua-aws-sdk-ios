//
//  UAEC2DescribeImagesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeImagesResponse.h"
#import "UAEC2ProductCode.h"
#import "UAEC2StateReason.h"
#import "UAEC2EBSBlockDevice.h"
#import "UAEC2BlockDeviceMapping.h"
#import "UAEC2Tag.h"
#import "UAEC2Image.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeImagesResponseSpec)

describe(@"UAEC2DescribeImagesResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeImagesResponse *describeImagesResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeImagesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeImagesResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END