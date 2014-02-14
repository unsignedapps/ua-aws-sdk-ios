//
//  UAEC2IPPermissionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2IPPermission.h"
#import "UAEC2UserIdGroupPair.h"
#import "UAEC2IPRange.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2IPPermissionSpec)

describe(@"UAEC2IPPermission", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2IPPermission *iPPermission = [MTLXMLAdapter modelOfClass:[UAEC2IPPermission class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[iPPermission should] beNonNil];

	    // additional verification
	});

});

SPEC_END