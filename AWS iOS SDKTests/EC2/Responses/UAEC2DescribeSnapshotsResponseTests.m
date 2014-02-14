//
//  UAEC2DescribeSnapshotsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeSnapshotsResponse.h"
#import "UAEC2Tag.h"
#import "UAEC2Snapshot.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeSnapshotsResponseSpec)

describe(@"UAEC2DescribeSnapshotsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeSnapshotsResponse *describeSnapshotsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeSnapshotsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeSnapshotsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END