//
//  UADDBDescribeTableResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBDescribeTableResponse.h"
#import "UADDBAttributeDefinition.h"
#import "UADDBKeySchema.h"
#import "UADDBProvisionedThroughput.h"
#import "UADDBProjection.h"
#import "UADDBLocalSecondaryIndex.h"
#import "UADDBGlobalSecondaryIndex.h"
#import "UADDBTable.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBDescribeTableResponseSpec)

describe(@"UADDBDescribeTableResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBDescribeTableResponse *describeTableResponse = [MTLJSONAdapter modelOfClass:[UADDBDescribeTableResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeTableResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END