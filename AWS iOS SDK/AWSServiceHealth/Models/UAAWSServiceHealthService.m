//
//  UAAWSServiceHealthService.m
//  AWS iOS SDK
//
//  Created by Rob Amos on 13/02/2014.
//
//

#import "UAAWSServiceHealthService.h"
#import "UAAWSServiceHealthOutage.h"

@interface UAAWSServiceHealthService ()

@property (nonatomic) UAAWSService service;
@property (nonatomic, copy) NSString *serviceName;
@property (nonatomic, copy) NSString *groupName;
@property (nonatomic, copy) NSArray *recentOutages;
@property (nonatomic, copy) NSArray *currentOutages;

- (id)initWithService:(UAAWSService)service currentOutages:(NSArray *)currentOutages recentOutages:(NSArray *)recentOutages;
+ (UAAWSService)serviceForServiceName:(NSString *)name;
+ (NSString *)serviceNameForService:(UAAWSService)service;
+ (NSString *)groupNameForService:(UAAWSService)service;

@end

@implementation UAAWSServiceHealthService

@synthesize service=_service, serviceName=_serviceName, currentOutages=_currentOutages, recentOutages=_recentOutages, groupName=_groupName;

- (id)initWithService:(UAAWSService)service currentOutages:(NSArray *)currentOutages recentOutages:(NSArray *)recentOutages
{
    if (self = [self init])
    {
        [self setService:service];
        [self setServiceName:[[self class] serviceNameForService:service]];
        [self setGroupName:[[self class] groupNameForService:service]];
        [self setCurrentOutages:currentOutages];
        [self setRecentOutages:recentOutages];
    }
    return self;
}

- (UAAWSServiceHealthOutageType)currentStatusForRegion:(UAAWSRegion)region
{
    // are there no outages?
    if (self.currentOutages == nil || [self.currentOutages count] == 0)
        return UAAWSServiceHealthOutageTypeHealthy;
    
    // find the worst one in the list
    UAAWSServiceHealthOutageType type = UAAWSServiceHealthOutageTypeHealthy;
    for (UAAWSServiceHealthOutage *outage in self.currentOutages)
    {
        if (outage.region == region && outage.type > type)
            type = outage.type;
    }
    return type;
}

- (NSString *)currentStatusDescriptionForRegion:(UAAWSRegion)region
{
    UAAWSServiceHealthOutageType status = [self currentStatusForRegion:region];
    
    if (status == UAAWSServiceHealthOutageTypeHealthy && (self.currentOutages == nil || [self.currentOutages count] == 0))
        return @"Service is operating normally.";
    
    // find the matching outage
    for (UAAWSServiceHealthOutage *outage in self.currentOutages)
    {
        if (outage.region == region && outage.type == status && outage.summary != nil)
            return outage.summary;
    }
    
    // if we're here then there is no title/summary, best make something up
    switch (status)
    {
        case UAAWSServiceHealthOutageTypeHealthy:
            return @"Service is operating normally.";
            
        case UAAWSServiceHealthOutageTypeInformational:
            return @"Service is affected by an informational issue.";
            
        case UAAWSServiceHealthOutageTypeDegraded:
            return @"Service is currently degraded.";
            
        case UAAWSServiceHealthOutageTypeDisrupted:
            return @"Service is currently disrupted.";
            
        default:
            return @"Service is affected by an unknown issue.";
    }
    
}

#pragma mark - Service Translation

+ (UAAWSService)serviceForServiceName:(NSString *)name
{
    if (name == nil)
        return UAAWSServiceUnknown;
    
    NSDictionary *names =
    @{
        @"aps": @(UAAWSServiceAppStream),
        @"autoscaling": @(UAAWSServiceAutoScaling),
        @"cloudformation": @(UAAWSServiceCloudFormation),
        @"cloudfront": @(UAAWSServiceCloudFront),
        @"cloudhsm": @(UAAWSServiceCloudHSM),
        @"cloudsearch": @(UAAWSServiceCloudSearch),
        @"cloudtrail": @(UAAWSServiceCloudTrail),
        @"cloudwatch": @(UAAWSServiceCloudWatch),
        @"datapipeline": @(UAAWSServiceDataPipeline),
        @"directconnect": @(UAAWSServiceDirectConnect),
        @"dynamodb": @(UAAWSServiceDynamoDB),
        @"ec2": @(UAAWSServiceEC2),
        @"elasticache": @(UAAWSServiceElastiCache),
        @"elasticbeanstalk": @(UAAWSServiceElasticBeanstalk),
        @"elb": @(UAAWSServiceElasticLoadBalancing),
        @"emr": @(UAAWSServiceElasticMapReduce),
        @"elastictranscoder": @(UAAWSServiceElasticTranscoder),
        @"fps": @(UAAWSServiceFlexiblePaymentsService),
        @"glacier": @(UAAWSServiceGlacier),
        @"iam": @(UAAWSServiceIAM),
        @"import": @(UAAWSServiceImportExport),
        @"kinesis": @(UAAWSServiceKinesis),
        @"management": @(UAAWSServiceManagementConsole),
        @"mturk": @(UAAWSServiceMechanicalTurk),
        @"opsworks": @(UAAWSServiceOpsWorks),
        @"rds": @(UAAWSServiceRDS),
        @"redshift": @(UAAWSServiceRedshift),
        @"route53": @(UAAWSServiceRoute53),
        @"s3": @(UAAWSServiceS3),
        @"ses": @(UAAWSServiceSES),
        @"simpledb": @(UAAWSServiceSimpleDB),
        @"sns": @(UAAWSServiceSNS),
        @"sqs": @(UAAWSServiceSQS),
        @"storagegateway": @(UAAWSServiceStorageGateway),
        @"swf": @(UAAWSServiceSWF),
        @"vpc": @(UAAWSServiceVPC),
        @"wks": @(UAAWSServiceWorkspaces)
    };
    
    NSNumber *serviceNumber = [names objectForKey:name];
    return serviceNumber == nil ? UAAWSServiceUnknown : (UAAWSService)[serviceNumber unsignedIntegerValue];
}

+ (NSString *)serviceNameForService:(UAAWSService)service
{
    switch (service)
    {
        case UAAWSServiceAppStream:
            return @"aps";

        case UAAWSServiceAutoScaling:
            return @"autoscaling";
            
        case UAAWSServiceCloudFormation:
            return @"cloudformation";
            
        case UAAWSServiceCloudFront:
            return @"cloudfront";
            
        case UAAWSServiceCloudHSM:
            return @"cloudhsm";
            
        case UAAWSServiceCloudSearch:
            return @"cloudsearch";
            
        case UAAWSServiceCloudTrail:
            return @"cloudtrail";
            
        case UAAWSServiceCloudWatch:
            return @"cloudwatch";
            
        case UAAWSServiceDataPipeline:
            return @"datapipeline";
            
        case UAAWSServiceDirectConnect:
            return @"directconnect";
            
        case UAAWSServiceDynamoDB:
            return @"dynamodb";
            
        case UAAWSServiceEC2:
            return @"ec2";
            
        case UAAWSServiceElastiCache:
            return @"elasticache";
            
        case UAAWSServiceElasticBeanstalk:
            return @"elasticbeanstalk";
            
        case UAAWSServiceElasticLoadBalancing:
            return @"elb";
            
        case UAAWSServiceElasticMapReduce:
            return @"emr";
            
        case UAAWSServiceElasticTranscoder:
            return @"elastictranscoder";
            
        case UAAWSServiceFlexiblePaymentsService:
            return @"fps";
            
        case UAAWSServiceGlacier:
            return @"glacier";
            
        case UAAWSServiceIAM:
            return @"iam";
            
        case UAAWSServiceImportExport:
            return @"import";
            
        case UAAWSServiceKinesis:
            return @"kinesis";
            
        case UAAWSServiceManagementConsole:
            return @"management";
            
        case UAAWSServiceMechanicalTurk:
            return @"mturk";
            
        case UAAWSServiceOpsWorks:
            return @"opsworks";
            
        case UAAWSServiceRDS:
            return @"rds";
            
        case UAAWSServiceRedshift:
            return @"redshift";
            
        case UAAWSServiceRoute53:
            return @"route53";
            
        case UAAWSServiceS3:
            return @"s3";
            
        case UAAWSServiceSES:
            return @"ses";
            
        case UAAWSServiceSimpleDB:
            return @"simpledb";
            
        case UAAWSServiceSNS:
            return @"sns";
            
        case UAAWSServiceSQS:
            return @"sqs";
            
        case UAAWSServiceStorageGateway:
            return @"storagegateway";
            
        case UAAWSServiceSWF:
            return @"swf";
            
        case UAAWSServiceVPC:
            return @"vpc";
            
        case UAAWSServiceWorkspaces:
            return @"wks";
            
        default:
            return nil;
    }
}

+ (NSString *)groupNameForService:(UAAWSService)service
{
    switch (service)
    {
        case UAAWSServiceAutoScaling:
        case UAAWSServiceCloudHSM:
        case UAAWSServiceDirectConnect:
        case UAAWSServiceEC2:
        case UAAWSServiceElasticLoadBalancing:
        case UAAWSServiceMechanicalTurk:
        case UAAWSServiceRoute53:
        case UAAWSServiceVPC:
        case UAAWSServiceWorkspaces:
            return @"Compute and Networking";

        case UAAWSServiceAppStream:
        case UAAWSServiceCloudFront:
        case UAAWSServiceGlacier:
        case UAAWSServiceImportExport:
        case UAAWSServiceS3:
        case UAAWSServiceStorageGateway:
            return @"Storage and Content Delivery";

        case UAAWSServiceDynamoDB:
        case UAAWSServiceElastiCache:
        case UAAWSServiceRDS:
        case UAAWSServiceRedshift:
        case UAAWSServiceSimpleDB:
            return @"Database";

        case UAAWSServiceCloudFormation:
        case UAAWSServiceCloudTrail:
        case UAAWSServiceCloudWatch:
        case UAAWSServiceElasticBeanstalk:
        case UAAWSServiceIAM:
        case UAAWSServiceManagementConsole:
        case UAAWSServiceOpsWorks:
            return @"Deployment and Management";

        case UAAWSServiceDataPipeline:
        case UAAWSServiceElasticMapReduce:
        case UAAWSServiceKinesis:
            return @"Analytics";

        case UAAWSServiceCloudSearch:
        case UAAWSServiceElasticTranscoder:
        case UAAWSServiceFlexiblePaymentsService:
        case UAAWSServiceSES:
        case UAAWSServiceSNS:
        case UAAWSServiceSQS:
        case UAAWSServiceSWF:
            return @"App Services";
            
        default:
            return @"Unknown";
    }
}


+ (BOOL)isService:(UAAWSService)service availableInRegion:(UAAWSRegion)region
{
    switch (region)
    {
        // all services available here
        case UAAWSRegionUSEast1:
            return YES;
            
        // US West 1
        case UAAWSRegionUSWest1:
            
            switch (service)
            {
                case UAAWSServiceAutoScaling:
                case UAAWSServiceCloudFormation:
                case UAAWSServiceCloudFront:
                case UAAWSServiceCloudHSM:
                case UAAWSServiceCloudSearch:
                case UAAWSServiceCloudTrail:
                case UAAWSServiceCloudWatch:
                case UAAWSServiceDirectConnect:
                case UAAWSServiceDynamoDB:
                case UAAWSServiceEC2:
                case UAAWSServiceElastiCache:
                case UAAWSServiceElasticBeanstalk:
                case UAAWSServiceElasticLoadBalancing:
                case UAAWSServiceElasticMapReduce:
                case UAAWSServiceElasticTranscoder:
                case UAAWSServiceGlacier:
                case UAAWSServiceIAM:
                case UAAWSServiceImportExport:
                case UAAWSServiceManagementConsole:
                case UAAWSServiceRDS:
                case UAAWSServiceRedshift:
                case UAAWSServiceRoute53:
                case UAAWSServiceS3:
                case UAAWSServiceSES:
                case UAAWSServiceSimpleDB:
                case UAAWSServiceSNS:
                case UAAWSServiceSQS:
                case UAAWSServiceStorageGateway:
                case UAAWSServiceSWF:
                case UAAWSServiceVPC:
                    return YES;

                default:
                    return NO;
            }
            
        // US West 2
        case UAAWSRegionUSWest2:
            
            switch (service)
            {
                case UAAWSServiceAutoScaling:
                case UAAWSServiceCloudFormation:
                case UAAWSServiceCloudFront:
                case UAAWSServiceCloudSearch:
                case UAAWSServiceCloudWatch:
                case UAAWSServiceDirectConnect:
                case UAAWSServiceDynamoDB:
                case UAAWSServiceEC2:
                case UAAWSServiceElastiCache:
                case UAAWSServiceElasticBeanstalk:
                case UAAWSServiceElasticLoadBalancing:
                case UAAWSServiceElasticMapReduce:
                case UAAWSServiceElasticTranscoder:
                case UAAWSServiceGlacier:
                case UAAWSServiceIAM:
                case UAAWSServiceImportExport:
                case UAAWSServiceManagementConsole:
                case UAAWSServiceRDS:
                case UAAWSServiceRoute53:
                case UAAWSServiceS3:
                case UAAWSServiceSimpleDB:
                case UAAWSServiceSNS:
                case UAAWSServiceSQS:
                case UAAWSServiceStorageGateway:
                case UAAWSServiceSWF:
                case UAAWSServiceVPC:
                    return YES;
                    
                default:
                    return NO;
            }

        // EU West 1
        case UAAWSRegionEUWest1:
            
            switch (service)
            {
                case UAAWSServiceAutoScaling:
                case UAAWSServiceCloudFormation:
                case UAAWSServiceCloudFront:
                case UAAWSServiceCloudHSM:
                case UAAWSServiceCloudSearch:
                case UAAWSServiceCloudWatch:
                case UAAWSServiceDirectConnect:
                case UAAWSServiceDynamoDB:
                case UAAWSServiceEC2:
                case UAAWSServiceElastiCache:
                case UAAWSServiceElasticBeanstalk:
                case UAAWSServiceElasticLoadBalancing:
                case UAAWSServiceElasticMapReduce:
                case UAAWSServiceElasticTranscoder:
                case UAAWSServiceGlacier:
                case UAAWSServiceIAM:
                case UAAWSServiceImportExport:
                case UAAWSServiceManagementConsole:
                case UAAWSServiceRDS:
                case UAAWSServiceRedshift:
                case UAAWSServiceRoute53:
                case UAAWSServiceS3:
                case UAAWSServiceSES:
                case UAAWSServiceSimpleDB:
                case UAAWSServiceSNS:
                case UAAWSServiceSQS:
                case UAAWSServiceStorageGateway:
                case UAAWSServiceSWF:
                case UAAWSServiceVPC:
                    return YES;
                    
                default:
                    return NO;
        }
            
        // AP Southeast 1
        case UAAWSRegionAPSoutheast1:
            
            switch (service)
            {
                case UAAWSServiceAutoScaling:
                case UAAWSServiceCloudFormation:
                case UAAWSServiceCloudFront:
                case UAAWSServiceCloudSearch:
                case UAAWSServiceCloudWatch:
                case UAAWSServiceDirectConnect:
                case UAAWSServiceDynamoDB:
                case UAAWSServiceEC2:
                case UAAWSServiceElastiCache:
                case UAAWSServiceElasticBeanstalk:
                case UAAWSServiceElasticLoadBalancing:
                case UAAWSServiceElasticMapReduce:
                case UAAWSServiceElasticTranscoder:
                case UAAWSServiceIAM:
                case UAAWSServiceImportExport:
                case UAAWSServiceManagementConsole:
                case UAAWSServiceRDS:
                case UAAWSServiceRedshift:
                case UAAWSServiceRoute53:
                case UAAWSServiceS3:
                case UAAWSServiceSimpleDB:
                case UAAWSServiceSNS:
                case UAAWSServiceSQS:
                case UAAWSServiceStorageGateway:
                case UAAWSServiceSWF:
                case UAAWSServiceVPC:
                    return YES;
                    
                default:
                    return NO;
            }

        // AP Northeast 1
        case UAAWSRegionAPNortheast1:
            
            switch (service)
            {
                case UAAWSServiceAutoScaling:
                case UAAWSServiceCloudFormation:
                case UAAWSServiceCloudFront:
                case UAAWSServiceCloudWatch:
                case UAAWSServiceDirectConnect:
                case UAAWSServiceDynamoDB:
                case UAAWSServiceEC2:
                case UAAWSServiceElastiCache:
                case UAAWSServiceElasticBeanstalk:
                case UAAWSServiceElasticLoadBalancing:
                case UAAWSServiceElasticMapReduce:
                case UAAWSServiceElasticTranscoder:
                case UAAWSServiceGlacier:
                case UAAWSServiceIAM:
                case UAAWSServiceManagementConsole:
                case UAAWSServiceRDS:
                case UAAWSServiceRedshift:
                case UAAWSServiceRoute53:
                case UAAWSServiceS3:
                case UAAWSServiceSimpleDB:
                case UAAWSServiceSNS:
                case UAAWSServiceSQS:
                case UAAWSServiceStorageGateway:
                case UAAWSServiceSWF:
                case UAAWSServiceVPC:
                    return YES;
                    
                default:
                    return NO;
            }

        // AP Southeast 2
        case UAAWSRegionAPSoutheast2:
            
            switch (service)
            {
                case UAAWSServiceAutoScaling:
                case UAAWSServiceCloudFormation:
                case UAAWSServiceCloudFront:
                case UAAWSServiceCloudHSM:
                case UAAWSServiceCloudWatch:
                case UAAWSServiceDirectConnect:
                case UAAWSServiceDynamoDB:
                case UAAWSServiceEC2:
                case UAAWSServiceElastiCache:
                case UAAWSServiceElasticBeanstalk:
                case UAAWSServiceElasticLoadBalancing:
                case UAAWSServiceElasticMapReduce:
                case UAAWSServiceGlacier:
                case UAAWSServiceIAM:
                case UAAWSServiceManagementConsole:
                case UAAWSServiceRDS:
                case UAAWSServiceRedshift:
                case UAAWSServiceRoute53:
                case UAAWSServiceS3:
                case UAAWSServiceSimpleDB:
                case UAAWSServiceSNS:
                case UAAWSServiceSQS:
                case UAAWSServiceStorageGateway:
                case UAAWSServiceSWF:
                case UAAWSServiceVPC:
                    return YES;
                    
                default:
                    return NO;
            }

        // SA East 1
        case UAAWSRegionSAEast1:
            
            switch (service)
            {
                case UAAWSServiceAutoScaling:
                case UAAWSServiceCloudFormation:
                case UAAWSServiceCloudFront:
                case UAAWSServiceCloudWatch:
                case UAAWSServiceDirectConnect:
                case UAAWSServiceDynamoDB:
                case UAAWSServiceEC2:
                case UAAWSServiceElastiCache:
                case UAAWSServiceElasticBeanstalk:
                case UAAWSServiceElasticLoadBalancing:
                case UAAWSServiceElasticMapReduce:
                case UAAWSServiceIAM:
                case UAAWSServiceManagementConsole:
                case UAAWSServiceRDS:
                case UAAWSServiceRoute53:
                case UAAWSServiceS3:
                case UAAWSServiceSimpleDB:
                case UAAWSServiceSNS:
                case UAAWSServiceSQS:
                case UAAWSServiceStorageGateway:
                case UAAWSServiceSWF:
                case UAAWSServiceVPC:
                    return YES;
                    
                default:
                    return NO;
            }

        // US GovCloud
        case UAAWSRegionUSGovWest1:
            
            switch (service)
            {
                case UAAWSServiceAutoScaling:
                case UAAWSServiceCloudFormation:
                case UAAWSServiceCloudFront:
                case UAAWSServiceCloudWatch:
                case UAAWSServiceDirectConnect:
                case UAAWSServiceDynamoDB:
                case UAAWSServiceEC2:
                case UAAWSServiceElasticLoadBalancing:
                case UAAWSServiceElasticMapReduce:
                case UAAWSServiceIAM:
                case UAAWSServiceManagementConsole:
                case UAAWSServiceRDS:
                case UAAWSServiceRoute53:
                case UAAWSServiceS3:
                case UAAWSServiceSNS:
                case UAAWSServiceSQS:
                case UAAWSServiceSWF:
                case UAAWSServiceVPC:
                    return YES;
                    
                default:
                    return NO;
        }

        // CN North 1
        case UAAWSRegionCNNorth1:
            
            switch (service)
            {
                case UAAWSServiceAutoScaling:
                case UAAWSServiceCloudFormation:
                case UAAWSServiceCloudFront:
                case UAAWSServiceCloudWatch:
                case UAAWSServiceDynamoDB:
                case UAAWSServiceEC2:
                case UAAWSServiceElastiCache:
                case UAAWSServiceElasticLoadBalancing:
                case UAAWSServiceElasticMapReduce:
                case UAAWSServiceGlacier:
                case UAAWSServiceIAM:
                case UAAWSServiceManagementConsole:
                case UAAWSServiceRDS:
                case UAAWSServiceRoute53:
                case UAAWSServiceS3:
                case UAAWSServiceSNS:
                case UAAWSServiceSQS:
                case UAAWSServiceStorageGateway:
                case UAAWSServiceSWF:
                case UAAWSServiceVPC:
                    return YES;
                    
                default:
                    return NO;
            }
            
        // Shouldn't be any others
        case UAAWSRegionUnknown:
        default:
            return NO;
    }
}


@end
