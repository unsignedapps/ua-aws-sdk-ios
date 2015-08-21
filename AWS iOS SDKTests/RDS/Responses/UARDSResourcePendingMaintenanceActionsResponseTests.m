//
//  UARDSResourcePendingMaintenanceActionsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSResourcePendingMaintenanceActionsResponse.h"
#import "UARDSPendingMaintenanceActionDetail.h"
#import "UARDSResourcePendingMaintenanceActions.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSResourcePendingMaintenanceActionsResponseSpec)

describe(@"UARDSResourcePendingMaintenanceActionsResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSResourcePendingMaintenanceActionsResponse *resourcePendingMaintenanceActionsResponse = [MTLXMLAdapter modelOfClass:[UARDSResourcePendingMaintenanceActionsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[resourcePendingMaintenanceActionsResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END