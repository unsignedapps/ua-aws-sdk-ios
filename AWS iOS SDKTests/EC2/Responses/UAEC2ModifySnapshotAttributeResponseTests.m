//
//  UAEC2ModifySnapshotAttributeResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ModifySnapshotAttributeResponse.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ModifySnapshotAttributeResponseSpec)

describe(@"UAEC2ModifySnapshotAttributeResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ModifySnapshotAttributeResponse *modifySnapshotAttributeResponse = [MTLXMLAdapter modelOfClass:[UAEC2ModifySnapshotAttributeResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[modifySnapshotAttributeResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END