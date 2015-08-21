//
//  UARDSDBSecurityGroupResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBSecurityGroupResponse.h"
#import "UARDSEC2SecurityGroup.h"
#import "UARDSIPRange.h"
#import "UARDSDBSecurityGroup.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBSecurityGroupResponseSpec)

describe(@"UARDSDBSecurityGroupResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBSecurityGroupResponse *dBSecurityGroupResponse = [MTLXMLAdapter modelOfClass:[UARDSDBSecurityGroupResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBSecurityGroupResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END