//
//  UAKMSCreateGrantRequestTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAKMSCreateGrantRequest.h"
#import "UAKMSConstraints.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAKMSCreateGrantRequestSpec)

describe(@"UAKMSCreateGrantRequest", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAKMSCreateGrantRequest *createGrantRequest = [MTLJSONAdapter modelOfClass:[UAKMSCreateGrantRequest class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[createGrantRequest should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END