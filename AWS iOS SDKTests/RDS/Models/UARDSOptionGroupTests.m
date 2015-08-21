//
//  UARDSOptionGroupTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSOptionGroup.h"
#import "UARDSOptionSetting.h"
#import "UARDSDBSecurityGroupMembership.h"
#import "UARDSVPCSecurityGroupMembership.h"
#import "UARDSOption.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSOptionGroupSpec)

describe(@"UARDSOptionGroup", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSOptionGroup *optionGroup = [MTLXMLAdapter modelOfClass:[UARDSOptionGroup class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[optionGroup should] beNonNil];

	    // additional verification
	});

});

SPEC_END