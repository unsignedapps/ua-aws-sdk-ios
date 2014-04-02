//
//  UADDBBatchGetItemRequestTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBBatchGetItemRequest.h"
#import "UADDBRequestItems.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBBatchGetItemRequestSpec)

describe(@"UADDBBatchGetItemRequest", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBBatchGetItemRequest *batchGetItemRequest = [MTLJSONAdapter modelOfClass:[UADDBBatchGetItemRequest class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[batchGetItemRequest should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END