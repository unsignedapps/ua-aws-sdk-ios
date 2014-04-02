//
//  UADDBProvisionedThroughputDescriptionTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UADDBProvisionedThroughputDescription.h"


#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UADDBProvisionedThroughputDescriptionSpec)

describe(@"UADDBProvisionedThroughputDescription", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UADDBProvisionedThroughputDescription *provisionedThroughputDescription = [MTLJSONAdapter modelOfClass:[UADDBProvisionedThroughputDescription class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[provisionedThroughputDescription should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END