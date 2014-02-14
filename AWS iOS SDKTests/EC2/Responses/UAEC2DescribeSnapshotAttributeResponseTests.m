//
//  UAEC2DescribeSnapshotAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeSnapshotAttributeResponse.h"
#import "UAEC2CreateVolumePermission.h"
#import "UAEC2ProductCode.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeSnapshotAttributeResponseSpec)

describe(@"UAEC2DescribeSnapshotAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeSnapshotAttributeResponse *describeSnapshotAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeSnapshotAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeSnapshotAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END