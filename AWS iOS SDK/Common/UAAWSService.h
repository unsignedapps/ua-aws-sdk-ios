//
//  UAAWSService.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 12/02/2014.
//
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, UAAWSService)
{
    UAAWSServiceUnknown         = 0,
    UAAWSServiceAppStream,
    UAAWSServiceAutoScaling,
    UAAWSServiceCloudFormation,
    UAAWSServiceCloudFront,
    UAAWSServiceCloudHSM,
    UAAWSServiceCloudSearch,
    UAAWSServiceCloudTrail,
    UAAWSServiceCloudWatch,
    UAAWSServiceDataPipeline,
    UAAWSServiceDirectConnect,
    UAAWSServiceDynamoDB,
    UAAWSServiceEC2,
    UAAWSServiceElastiCache,
    UAAWSServiceElasticBeanstalk,
    UAAWSServiceElasticLoadBalancing,
    UAAWSServiceElasticMapReduce,
    UAAWSServiceElasticTranscoder,
    UAAWSServiceFlexiblePaymentsService,
    UAAWSServiceGlacier,
    UAAWSServiceIAM,
    UAAWSServiceImportExport,
    UAAWSServiceKinesis,
    UAAWSServiceManagementConsole,
    UAAWSServiceMechanicalTurk,
    UAAWSServiceOpsWorks,
    UAAWSServiceRDS,
    UAAWSServiceRedshift,
    UAAWSServiceRoute53,
    UAAWSServiceS3,
    UAAWSServiceSES,
    UAAWSServiceSimpleDB,
    UAAWSServiceSNS,
    UAAWSServiceSQS,
    UAAWSServiceStorageGateway,
    UAAWSServiceSWF,
    UAAWSServiceVPC,
    UAAWSServiceWorkspaces
};