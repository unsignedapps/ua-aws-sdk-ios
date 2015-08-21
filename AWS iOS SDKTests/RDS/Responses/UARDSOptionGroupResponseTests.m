//
//  UARDSOptionGroupResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSOptionGroupResponse.h"
#import "UARDSOptionSetting.h"
#import "UARDSDBSecurityGroupMembership.h"
#import "UARDSVPCSecurityGroupMembership.h"
#import "UARDSOption.h"
#import "UARDSOptionGroup.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSOptionGroupResponseSpec)

describe(@"UARDSOptionGroupResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSOptionGroupResponse *optionGroupResponse = [MTLXMLAdapter modelOfClass:[UARDSOptionGroupResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[optionGroupResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END