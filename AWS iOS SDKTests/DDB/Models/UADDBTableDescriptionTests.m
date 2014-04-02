//
//  UADDBTableDescriptionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBTableDescription.h"
#import "UADDBAttributeDefinition.h"
#import "UADDBKeySchema.h"
#import "UADDBProvisionedThroughputDescription.h"
#import "UADDBProjection.h"
#import "UADDBLocalSecondaryIndexDescription.h"
#import "UADDBGlobalSecondaryIndexDescription.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBTableDescriptionSpec)

describe(@"UADDBTableDescription", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBTableDescription *tableDescription = [MTLJSONAdapter modelOfClass:[UADDBTableDescription class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[tableDescription should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END