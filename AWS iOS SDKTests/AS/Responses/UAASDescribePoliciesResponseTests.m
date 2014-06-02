//
//  UAASDescribePoliciesResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASDescribePoliciesResponse.h"
#import "UAASAlarm.h"
#import "UAASScalingPolicy.h"

#import "UADDXML.h"
#import "UAMantle.h"

SPEC_BEGIN(UAASDescribePoliciesResponseSpec)

describe(@"UAASDescribePoliciesResponse", ^
{
	it(@"should import an XML string.", ^
    {
	    NSString *xml = @"<DescribePoliciesResponse xmlns=\"http://autoscaling.amazonaws.com/doc/2011-01-01/\"><DescribePoliciesResult><ScalingPolicies><member><PolicyARN>arn:aws:autoscaling:us-east-1:803981987763:scalingPolicy:c322761b-3172-4d56-9a21-0ed9d6161d67:autoScalingGroupName/my-test-asg:policyName/MyScaleDownPolicy</PolicyARN><AdjustmentType>ChangeInCapacity</AdjustmentType><ScalingAdjustment>-1</ScalingAdjustment><PolicyName>MyScaleDownPolicy</PolicyName><AutoScalingGroupName>my-test-asg</AutoScalingGroupName><Cooldown>60</Cooldown><Alarms><member><AlarmName>TestQueue</AlarmName><AlarmARN>arn:aws:cloudwatch:us-east-1:803981987763:alarm:TestQueue</AlarmARN></member></Alarms></member><member><PolicyARN>arn:aws:autoscaling:us-east-1:803981987763:scalingPolicy:c55a5cdd-9be0-435b-b60b-a8dd313159f5:autoScalingGroupName/my-test-asg:policyName/MyScaleUpPolicy</PolicyARN><AdjustmentType>ChangeInCapacity</AdjustmentType><ScalingAdjustment>1</ScalingAdjustment><PolicyName>MyScaleUpPolicy</PolicyName><AutoScalingGroupName>my-test-asg</AutoScalingGroupName><Cooldown>60</Cooldown><Alarms><member><AlarmName>TestQueue</AlarmName><AlarmARN>arn:aws:cloudwatch:us-east-1:803981987763:alarm:TestQueue</AlarmARN></member></Alarms></member></ScalingPolicies></DescribePoliciesResult><ResponseMetadata><RequestId>ec3bffad-b739-11e2-b38d-15fbEXAMPLE</RequestId></ResponseMetadata></DescribePoliciesResponse> ";
	    NSError *parseError = nil;
	    UADDXMLDocument *xmlDictionary = [[UADDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];
        
	    NSError *serialisationError = nil;
	    UAASDescribePoliciesResponse *describePoliciesResponse = [UAMTLXMLAdapter modelOfClass:[UAASDescribePoliciesResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describePoliciesResponse should] beNonNil];
        
	    // additional verification
        [[describePoliciesResponse.requestID should] equal:@"ec3bffad-b739-11e2-b38d-15fbEXAMPLE"];
        [[describePoliciesResponse.scalingPolicies should] haveCountOf:2];
        
        // Policy 1
        UAASScalingPolicy *policy1 = describePoliciesResponse.scalingPolicies[0];
        [[policy1.policyARN should] equal:@"arn:aws:autoscaling:us-east-1:803981987763:scalingPolicy:c322761b-3172-4d56-9a21-0ed9d6161d67:autoScalingGroupName/my-test-asg:policyName/MyScaleDownPolicy"];
        [[theValue(policy1.adjustmentType) should] equal:theValue(UAASScalingPolicyAdjustmentTypeChangeInCapacity)];
        [[policy1.policyName should] equal:@"MyScaleDownPolicy"];
        [[policy1.scalingAdjustment should] equal:[NSNumber numberWithInteger:-1]];
        [[policy1.autoScalingGroupName should] equal:@"my-test-asg"];
        [[policy1.cooldown should] equal:@60];
        [[policy1.alarms should] haveCountOf:1];
        
        // Policy 1 - Alarm
        UAASAlarm *alarm1 = policy1.alarms.firstObject;
        [[alarm1.alarmARN should] equal:@"arn:aws:cloudwatch:us-east-1:803981987763:alarm:TestQueue"];
        [[alarm1.alarmName should] equal:@"TestQueue"];
        
        // Policy 2
        UAASScalingPolicy *policy2 = describePoliciesResponse.scalingPolicies[1];
        [[policy2.policyARN should] equal:@"arn:aws:autoscaling:us-east-1:803981987763:scalingPolicy:c55a5cdd-9be0-435b-b60b-a8dd313159f5:autoScalingGroupName/my-test-asg:policyName/MyScaleUpPolicy"];
        [[theValue(policy2.adjustmentType) should] equal:theValue(UAASScalingPolicyAdjustmentTypeChangeInCapacity)];
        [[policy2.policyName should] equal:@"MyScaleUpPolicy"];
        [[policy2.scalingAdjustment should] equal:@1];
        [[policy2.autoScalingGroupName should] equal:@"my-test-asg"];
        [[policy2.cooldown should] equal:@60];
        [[policy2.alarms should] haveCountOf:1];
        
        // Policy 2 - Alarm
        UAASAlarm *alarm2 = policy2.alarms.firstObject;
        [[alarm2.alarmARN should] equal:@"arn:aws:cloudwatch:us-east-1:803981987763:alarm:TestQueue"];
        [[alarm2.alarmName should] equal:@"TestQueue"];
        
	});
});

SPEC_END