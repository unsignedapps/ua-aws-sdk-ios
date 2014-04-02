//
//  UADDBBatchGetItemResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBBatchGetItemResponse.h"
#import "UADDBResponses.h"
#import "UADDBUnprocessedKeys.h"
#import "UADDBTable.h"
#import "UADDBLocalSecondaryIndexes.h"
#import "UADDBGlobalSecondaryIndexes.h"
#import "UADDBConsumedCapacity.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBBatchGetItemResponseSpec)

describe(@"UADDBBatchGetItemResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBBatchGetItemResponse *batchGetItemResponse = [MTLJSONAdapter modelOfClass:[UADDBBatchGetItemResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[batchGetItemResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END