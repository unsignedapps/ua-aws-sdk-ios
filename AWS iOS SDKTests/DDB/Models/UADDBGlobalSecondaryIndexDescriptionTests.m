//
//  UADDBGlobalSecondaryIndexDescriptionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBGlobalSecondaryIndexDescription.h"
#import "UADDBKeySchema.h"
#import "UADDBProjection.h"
#import "UADDBProvisionedThroughputDescription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBGlobalSecondaryIndexDescriptionSpec)

describe(@"UADDBGlobalSecondaryIndexDescription", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBGlobalSecondaryIndexDescription *globalSecondaryIndexDescription = [MTLJSONAdapter modelOfClass:[UADDBGlobalSecondaryIndexDescription class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[globalSecondaryIndexDescription should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END