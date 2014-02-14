//
//  UAEC2ReservedInstancesModificationTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ReservedInstancesModification.h"
#import "UAEC2ReservedInstancesID.h"
#import "UAEC2TargetConfiguration.h"
#import "UAEC2ReservedInstancesModificationResponse.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ReservedInstancesModificationSpec)

describe(@"UAEC2ReservedInstancesModification", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ReservedInstancesModification *reservedInstancesModification = [MTLXMLAdapter modelOfClass:[UAEC2ReservedInstancesModification class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[reservedInstancesModification should] beNonNil];

	    // additional verification
	});

});

SPEC_END