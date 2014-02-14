//
//  UAEC2LaunchPermissionModificationsTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2LaunchPermissionModifications.h"
#import "UAEC2LaunchPermission.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2LaunchPermissionModificationsSpec)

describe(@"UAEC2LaunchPermissionModifications", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2LaunchPermissionModifications *launchPermissionModifications = [MTLXMLAdapter modelOfClass:[UAEC2LaunchPermissionModifications class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[launchPermissionModifications should] beNonNil];

	    // additional verification
	});

});

SPEC_END