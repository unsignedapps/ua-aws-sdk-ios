//
//  UARDSDBSnapshotResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UARDSDBSnapshotResponse.h"
#import "UARDSDBSnapshot.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UARDSDBSnapshotResponseSpec)

describe(@"UARDSDBSnapshotResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UARDSDBSnapshotResponse *dBSnapshotResponse = [MTLXMLAdapter modelOfClass:[UARDSDBSnapshotResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[dBSnapshotResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END