//
//  UAEC2DescribeInstanceAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeInstanceAttributeResponse.h"
#import "UAEC2EBSInstanceBlockDevice.h"
#import "UAEC2InstanceBlockDeviceMapping.h"
#import "UAEC2ProductCode.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeInstanceAttributeResponseSpec)

describe(@"UAEC2DescribeInstanceAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeInstanceAttributeResponse *describeInstanceAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeInstanceAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeInstanceAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END