//
//  UAASDescribeAutoScalingGroupsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASDescribeAutoScalingGroupsResponse.h"
#import "UAASInstance.h"
#import "UAASSuspendedProcess.h"
#import "UAASEnabledMetric.h"
#import "UAASTag.h"
#import "UAASAutoScalingGroup.h"

#import "UADDXML.h"
#import "UAMantle.h"

SPEC_BEGIN(UAASDescribeAutoScalingGroupsResponseSpec)

describe(@"UAASDescribeAutoScalingGroupsResponse", ^
{
	it(@"should import an XML string.", ^{
	    NSString *xml = @"<DescribeAutoScalingGroupsResponse xmlns=\"http://autoscaling.amazonaws.com/doc/2011-01-01/\"><DescribeAutoScalingGroupsResult><AutoScalingGroups><member><Tags/><SuspendedProcesses/><AutoScalingGroupName>my-test-asg-lbs</AutoScalingGroupName><HealthCheckType>ELB</HealthCheckType><CreatedTime>2013-05-06T17:47:15.000Z</CreatedTime><EnabledMetrics/><LaunchConfigurationName>my-test-lc</LaunchConfigurationName><Instances/><DesiredCapacity>2</DesiredCapacity><AvailabilityZones><member>us-east-1b</member><member>us-east-1a</member></AvailabilityZones><LoadBalancerNames><member>my-test-asg-loadbalancer</member></LoadBalancerNames><MinSize>2</MinSize><VPCZoneIdentifier/><HealthCheckGracePeriod>120</HealthCheckGracePeriod><DefaultCooldown>300</DefaultCooldown><AutoScalingGroupARN>arn:aws:autoscaling:us-east-1:803981987763:autoScalingGroup:ca861182-c8f9-4ca7-b1eb-cd35505f5ebb:autoScalingGroupName/my-test-asg-lbs</AutoScalingGroupARN><TerminationPolicies><member>Default</member></TerminationPolicies><MaxSize>10</MaxSize></member></AutoScalingGroups></DescribeAutoScalingGroupsResult><ResponseMetadata><RequestId>0f02a07d-b677-11e2-9eb0-dd50EXAMPLE</RequestId></ResponseMetadata></DescribeAutoScalingGroupsResponse>";
	    NSError *parseError = nil;
	    UADDXMLDocument *xmlDictionary = [[UADDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];
        
	    NSError *serialisationError = nil;
	    UAASDescribeAutoScalingGroupsResponse *describeAutoScalingGroupsResponse = [UAMTLXMLAdapter modelOfClass:[UAASDescribeAutoScalingGroupsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeAutoScalingGroupsResponse should] beNonNil];
        
	    // additional verification
        [[describeAutoScalingGroupsResponse.requestID should] equal:@"0f02a07d-b677-11e2-9eb0-dd50EXAMPLE"];
        [[describeAutoScalingGroupsResponse.autoScalingGroups should] haveCountOf:1];
        
        // The Auto Scaling Group
        UAASAutoScalingGroup *group = describeAutoScalingGroupsResponse.autoScalingGroups.firstObject;
        [[group should] beNonNil];
        [[group.tags should] beNil];
        [[group.suspendedProcesses should] beNil];
        [[group.autoScalingGroupName should] equal:@"my-test-asg-lbs"];
        [[theValue(group.healthCheckType) should] equal:theValue(UAASHealthCheckTypeELB)];
        [[group.createdTime should] equal:[NSDate dateWithTimeIntervalSince1970:1367826435]];
        [[group.enabledMetrics should] beNil];
        [[group.launchConfigurationName should] equal:@"my-test-lc"];
        [[group.instances should] beNil];
        [[group.desiredCapacity should] equal:@2];
        [[group.availabilityZones should] haveCountOf:2];
        [[group.loadBalancerNames should] haveCountOf:1];
        [[group.minSize should] equal:@2];
        [[group.vPCZoneIdentifier should] equal:@""];
        [[group.healthCheckGracePeriod should] equal:@120];
        [[group.defaultCooldown should] equal:@300];
        [[group.autoScalingGroupARN should] equal:@"arn:aws:autoscaling:us-east-1:803981987763:autoScalingGroup:ca861182-c8f9-4ca7-b1eb-cd35505f5ebb:autoScalingGroupName/my-test-asg-lbs"];
        [[group.terminationPolicies should] haveCountOf:1];
        [[group.maxSize should] equal:@10];
        
        // Availability Zones
        [[[group.availabilityZones objectAtIndex:0] should] equal:@"us-east-1b"];
        [[[group.availabilityZones objectAtIndex:1] should] equal:@"us-east-1a"];
        
        // Load Balancer Names
        [[[group.loadBalancerNames objectAtIndex:0] should] equal:@"my-test-asg-loadbalancer"];
        
        // Termination Policies
        [[[group.terminationPolicies objectAtIndex:0] should] equal:@"Default"];
	});
});

SPEC_END