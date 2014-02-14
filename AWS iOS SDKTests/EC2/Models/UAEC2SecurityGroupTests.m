//
//  UAEC2SecurityGroupTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2SecurityGroup.h"
#import "UAEC2UserIdGroupPair.h"
#import "UAEC2IPRange.h"
#import "UAEC2IPPermission.h"
#import "UAEC2Tag.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2SecurityGroupSpec)

describe(@"UAEC2SecurityGroup", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2SecurityGroup *securityGroup = [MTLXMLAdapter modelOfClass:[UAEC2SecurityGroup class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[securityGroup should] beNonNil];

	    // additional verification
	});

});

SPEC_END