//
//  UAASDescribeLaunchConfigurationsResponseTests.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import <Kiwi/Kiwi.h>
#import "UAASDescribeLaunchConfigurationsResponse.h"
#import "UAASEBSBlockDevice.h"
#import "UAASBlockDeviceMapping.h"
#import "UAASLaunchConfiguration.h"

#import "UADDXML.h"
#import "UAMantle.h"

SPEC_BEGIN(UAASDescribeLaunchConfigurationsResponseSpec)

describe(@"UAASDescribeLaunchConfigurationsResponse", ^
{
	it(@"should import an XML string.", ^
    {
	    NSString *xml = @"<DescribeLaunchConfigurationsResponse xmlns=\"http://autoscaling.amazonaws.com/doc/2011-01-01/\"><DescribeLaunchConfigurationsResult><LaunchConfigurations><member><AssociatePublicIpAddress>true</AssociatePublicIpAddress><SecurityGroups/><CreatedTime>2013-01-21T23:04:42.000Z</CreatedTime><KernelId/><LaunchConfigurationName>my-test-lc</LaunchConfigurationName><UserData/><InstanceType>m1.small</InstanceType><LaunchConfigurationARN>arn:aws:autoscaling:us-east-1:803981987763:launchConfiguration:9dbbbf87-6141-428a-a409-0752edbe6cad:launchConfigurationName/my-test-lc</LaunchConfigurationARN><BlockDeviceMappings/><ImageId>ami-514ac838</ImageId><KeyName/><RamdiskId/><InstanceMonitoring><Enabled>true</Enabled></InstanceMonitoring><EbsOptimized>false</EbsOptimized></member></LaunchConfigurations></DescribeLaunchConfigurationsResult><ResponseMetadata><RequestId>d05a22f8-b690-11e2-bf8e-2113fEXAMPLE</RequestId></ResponseMetadata></DescribeLaunchConfigurationsResponse> ";
	    NSError *parseError = nil;
	    UADDXMLDocument *xmlDictionary = [[UADDXMLDocument alloc] initWithXMLString:xml options:0 error:&parseError];
	    [[parseError should] beNil];
	    [[xmlDictionary should] beNonNil];
        
	    NSError *serialisationError = nil;
	    UAASDescribeLaunchConfigurationsResponse *describeLaunchConfigurationsResponse = [UAMTLXMLAdapter modelOfClass:[UAASDescribeLaunchConfigurationsResponse class] fromXMLNode:xmlDictionary error:&serialisationError];
	    [[serialisationError should] beNil];
	    [[describeLaunchConfigurationsResponse should] beNonNil];
        
	    // additional verification
        [[describeLaunchConfigurationsResponse.requestID should] equal:@"d05a22f8-b690-11e2-bf8e-2113fEXAMPLE"];
        [[describeLaunchConfigurationsResponse.launchConfigurations should] haveCountOf:1];
        
        
        // Launch Configuration
        UAASLaunchConfiguration *config = describeLaunchConfigurationsResponse.launchConfigurations.firstObject;
        [[theValue(config.associatePublicIPAddress) should] equal:theValue(YES)];
        [[config.securityGroups should] beNil];
        [[config.createdTime should] equal:[NSDate dateWithTimeIntervalSince1970:1358769882]];
        [[config.kernelID should] equal:@""];
        [[config.launchConfigurationName should] equal:@"my-test-lc"];
        [[config.userData should] equal:@""];
        [[config.instanceType should] equal:@"m1.small"];
        [[config.launchConfigurationARN should] equal:@"arn:aws:autoscaling:us-east-1:803981987763:launchConfiguration:9dbbbf87-6141-428a-a409-0752edbe6cad:launchConfigurationName/my-test-lc"];
        [[config.blockDeviceMappings should] beNil];
        [[config.imageID should] equal:@"ami-514ac838"];
        [[config.keyName should] equal:@""];
        [[config.ramdiskID should] equal:@""];
        [[theValue(config.instanceMonitoring) should] equal:theValue(YES)];
        [[theValue(config.ebsOptimized) should] equal:theValue(NO)];
	});
});

SPEC_END