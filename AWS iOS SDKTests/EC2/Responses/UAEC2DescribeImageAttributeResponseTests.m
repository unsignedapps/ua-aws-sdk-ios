//
//  UAEC2DescribeImageAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeImageAttributeResponse.h"
#import "UAEC2LaunchPermission.h"
#import "UAEC2ProductCode.h"
#import "UAEC2KernelID.h"
#import "UAEC2RamdiskID.h"
#import "UAEC2SriovNetSupport.h"
#import "UAEC2EBSBlockDevice.h"
#import "UAEC2BlockDeviceMapping.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeImageAttributeResponseSpec)

describe(@"UAEC2DescribeImageAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeImageAttributeResponse *describeImageAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeImageAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeImageAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END