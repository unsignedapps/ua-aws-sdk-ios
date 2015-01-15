//
//  UAKMSDescribeKeyResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAKMSDescribeKeyResponse.h"
#import "UAKMSKeyMetadata.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAKMSDescribeKeyResponseSpec)

describe(@"UAKMSDescribeKeyResponse", ^
{
	it(@"should import a JSON string.", ^
	{
	    NSString *json = @"";
	    NSError *parseError = nil;
	    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:[json dataUsingEncoding:NSUTF8StringEncoding] options:kNilOptions error:&parseError];
	    [[parseError should] beNil];
	    [[jsonDictionary should] beNonNil];

	    NSError *serialisationError = nil;
	    UAKMSDescribeKeyResponse *describeKeyResponse = [MTLJSONAdapter modelOfClass:[UAKMSDescribeKeyResponse class] fromJSONDictionary:jsonDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeKeyResponse should] beNonNil];
    
	    // additional verification
	});



});

SPEC_END