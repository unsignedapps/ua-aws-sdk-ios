//
//  UAEC2ResetSnapshotAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ResetSnapshotAttributeResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ResetSnapshotAttributeResponseSpec)

describe(@"UAEC2ResetSnapshotAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ResetSnapshotAttributeResponse *resetSnapshotAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2ResetSnapshotAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[resetSnapshotAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END