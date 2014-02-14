//
//  UAEC2DescribeExportTasksResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAEC2DescribeExportTasksResponse.h"
#import "UAEC2InstanceExportDetails.h"
#import "UAEC2ExportToS3TaskSpecification.h"
#import "UAEC2ExportTask.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAEC2DescribeExportTasksResponseSpec)

describe(@"UAEC2DescribeExportTasksResponse", ^
{


	it(@"should encode to a query string.", ^
	{
	    NSString *xml = @"";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAEC2DescribeExportTasksResponse *describeExportTasksResponse = [MTLXMLAdapter modelOfClass:[UAEC2DescribeExportTasksResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeExportTasksResponse should] beNonNil];

	    // additional verification
	});

});

SPEC_END