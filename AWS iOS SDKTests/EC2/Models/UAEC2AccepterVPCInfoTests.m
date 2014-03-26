//
//  UAEC2AccepterVPCInfoTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2AccepterVPCInfo.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2AccepterVPCInfoSpec)

describe(@"UAEC2AccepterVPCInfo", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2AccepterVPCInfo *accepterVPCInfo = [MTLXMLAdapter modelOfClass:[UAEC2AccepterVPCInfo class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[accepterVPCInfo should] beNonNil];

	    // additional verification
	});

});

SPEC_END