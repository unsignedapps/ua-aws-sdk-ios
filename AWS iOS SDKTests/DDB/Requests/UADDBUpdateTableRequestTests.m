//
//  UADDBUpdateTableRequestTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBUpdateTableRequest.h"
#import "UADDBProvisionedThroughput.h"
#import "UADDBUpdate.h"
#import "UADDBGlobalSecondaryIndexUpdate.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBUpdateTableRequestSpec)

describe(@"UADDBUpdateTableRequest", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBUpdateTableRequest *updateTableRequest = [MTLJSONAdapter modelOfClass:[UADDBUpdateTableRequest class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[updateTableRequest should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END