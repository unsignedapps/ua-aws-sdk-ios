//
//  UAEC2DescribeReservedInstancesModificationsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeReservedInstancesModificationsResponse.h"
#import "UAEC2ReservedInstancesID.h"
#import "UAEC2TargetConfiguration.h"
#import "UAEC2ReservedInstancesModificationResponse.h"
#import "UAEC2ReservedInstancesModification.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeReservedInstancesModificationsResponseSpec)

describe(@"UAEC2DescribeReservedInstancesModificationsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeReservedInstancesModificationsResponse *describeReservedInstancesModificationsResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeReservedInstancesModificationsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeReservedInstancesModificationsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END