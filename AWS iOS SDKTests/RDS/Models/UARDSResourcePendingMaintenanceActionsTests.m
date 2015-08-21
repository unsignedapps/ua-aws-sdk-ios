//
//  UARDSResourcePendingMaintenanceActionsTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSResourcePendingMaintenanceActions.h"
#import "UARDSPendingMaintenanceActionDetail.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSResourcePendingMaintenanceActionsSpec)

describe(@"UARDSResourcePendingMaintenanceActions", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSResourcePendingMaintenanceActions *resourcePendingMaintenanceActions = [MTLXMLAdapter modelOfClass:[UARDSResourcePendingMaintenanceActions class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[resourcePendingMaintenanceActions should] beNonNil];

	    // additional verification
	});

});

SPEC_END