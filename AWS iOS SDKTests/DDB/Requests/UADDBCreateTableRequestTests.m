//
//  UADDBCreateTableRequestTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBCreateTableRequest.h"
#import "UADDBAttributeDefinition.h"
#import "UADDBKeySchema.h"
#import "UADDBProjection.h"
#import "UADDBLocalSecondaryIndex.h"
#import "UADDBProvisionedThroughput.h"
#import "UADDBGlobalSecondaryIndex.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBCreateTableRequestSpec)

describe(@"UADDBCreateTableRequest", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBCreateTableRequest *createTableRequest = [MTLJSONAdapter modelOfClass:[UADDBCreateTableRequest class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createTableRequest should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END