//
//  UAEC2CreateVolumePermissionModificationsTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2CreateVolumePermissionModifications.h"
#import "UAEC2CreateVolumePermission.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2CreateVolumePermissionModificationsSpec)

describe(@"UAEC2CreateVolumePermissionModifications", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2CreateVolumePermissionModifications *createVolumePermissionModifications = [MTLXMLAdapter modelOfClass:[UAEC2CreateVolumePermissionModifications class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createVolumePermissionModifications should] beNonNil];

	    // additional verification
	});

});

SPEC_END