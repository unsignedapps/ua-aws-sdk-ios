//
//  UAASDescribeScalingActivitiesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASDescribeScalingActivitiesResponse.h"
#import "UAASActivity.h"

#import <KissXML/DDXML.h>
#import <Mantle/Mantle.h>

SPEC_BEGIN(UAASDescribeScalingActivitiesResponseSpec)

describe(@"UAASDescribeScalingActivitiesResponse", ^
{
	it(@"should import an XML string.", ^
    {
	    NSString *xml = @"<DescribeScalingActivitiesResponse xmlns=\"http://autoscaling.amazonaws.com/doc/2011-01-01/\"><DescribeScalingActivitiesResult><Activities><member><StatusCode>Failed</StatusCode><Progress>0</Progress><ActivityId>063308ae-aa22-4a9b-94f4-9faeEXAMPLE</ActivityId><StartTime>2012-04-12T17:32:07.000Z</StartTime><AutoScalingGroupName>my-test-asg</AutoScalingGroupName><Cause>At 2012-04-12T17:31:30Z a user request created an AutoScalingGroup changing the desired capacity from 0 to 1.  At 2012-04-12T17:32:07Z an instance was started in response to a difference between desired and actual capacity, increasing the capacity from 0 to 1.</Cause><Details>{}</Details><Description>Launching a new EC2 instance.  Status Reason: The image id 'ami-4edb0327' does not exist. Launching EC2 instance failed.</Description><EndTime>2012-04-12T17:32:08.000Z</EndTime><StatusMessage>The image id 'ami-4edb0327' does not exist. Launching EC2 instance failed.</StatusMessage></member></Activities></DescribeScalingActivitiesResult><ResponseMetadata><RequestId>7a641adc-84c5-11e1-a8a5-217ebEXAMPLE</RequestId></ResponseMetadata></DescribeScalingActivitiesResponse>";
	    NSError *parseError = nil;
	    DDXMLDocument *xmlDictionary = [[DDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];
        
	    NSError *serialisationError = nil;
	    UAASDescribeScalingActivitiesResponse *describeScalingActivitiesResponse = [MTLXMLAdapter modelOfClass:[UAASDescribeScalingActivitiesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeScalingActivitiesResponse should] beNonNil];
        
	    // additional verification
        [[describeScalingActivitiesResponse.requestID should] equal:@"7a641adc-84c5-11e1-a8a5-217ebEXAMPLE"];
        [[describeScalingActivitiesResponse.activities should] haveCountOf:1];
        
        // Activity
        UAASActivity *activity = describeScalingActivitiesResponse.activities.firstObject;
        [[theValue(activity.statusCode) should] equal:theValue(UAASActivityStatusFailed)];
        [[activity.progress should] equal:@0];
        [[activity.activityID should] equal:@"063308ae-aa22-4a9b-94f4-9faeEXAMPLE"];
        [[activity.startTime should] equal:[NSDate dateWithTimeIntervalSince1970:1334251927]];
        [[activity.autoScalingGroupName should] equal:@"my-test-asg"];
        [[activity.cause should] equal:@"At 2012-04-12T17:31:30Z a user request created an AutoScalingGroup changing the desired capacity from 0 to 1.  At 2012-04-12T17:32:07Z an instance was started in response to a difference between desired and actual capacity, increasing the capacity from 0 to 1."];
        [[activity.details should] equal:@"{}"];
        [[activity.descriptionValue should] equal:@"Launching a new EC2 instance.  Status Reason: The image id 'ami-4edb0327' does not exist. Launching EC2 instance failed."];
        [[activity.endTime should] equal:[NSDate dateWithTimeIntervalSince1970:1334251928]];
        [[activity.statusMessage should] equal:@"The image id 'ami-4edb0327' does not exist. Launching EC2 instance failed."];
	});
});

SPEC_END