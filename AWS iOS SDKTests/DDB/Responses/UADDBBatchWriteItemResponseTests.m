//
//  UADDBBatchWriteItemResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBBatchWriteItemResponse.h"
#import "UADDBUnprocessedItems.h"
#import "UADDBItemCollectionMetrics.h"
#import "UADDBTable.h"
#import "UADDBLocalSecondaryIndexes.h"
#import "UADDBGlobalSecondaryIndexes.h"
#import "UADDBConsumedCapacity.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBBatchWriteItemResponseSpec)

describe(@"UADDBBatchWriteItemResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBBatchWriteItemResponse *batchWriteItemResponse = [MTLJSONAdapter modelOfClass:[UADDBBatchWriteItemResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[batchWriteItemResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END