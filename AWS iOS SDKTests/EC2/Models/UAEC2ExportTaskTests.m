//
//  UAEC2ExportTaskTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2ExportTask.h"
#import "UAEC2InstanceExportDetails.h"
#import "UAEC2ExportToS3Task.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2ExportTaskSpec)

describe(@"UAEC2ExportTask", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2ExportTask *exportTask = [MTLXMLAdapter modelOfClass:[UAEC2ExportTask class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[exportTask should] beNonNil];

	    // additional verification
	});

});

SPEC_END