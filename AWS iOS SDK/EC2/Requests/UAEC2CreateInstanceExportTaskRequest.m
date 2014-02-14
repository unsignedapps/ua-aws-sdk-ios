//
//  UAEC2CreateInstanceExportTaskRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2CreateInstanceExportTaskRequest.h"
#import "UAEC2CreateInstanceExportTaskResponse.h"
#import "UAEC2ExportToS3Task.h"

@interface UAEC2CreateInstanceExportTaskRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2CreateInstanceExportTaskRequest

@synthesize action=_action, version=_version, descriptionValue=_descriptionValue, instanceID=_instanceID, targetEnvironment=_targetEnvironment, exportToS3Task=_exportToS3Task;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"CreateInstanceExportTask"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2CreateInstanceExportTaskResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"descriptionValue": @"DescriptionValue",
        @"instanceID": @"InstanceId",
        @"targetEnvironment": @"TargetEnvironment",
        @"exportToS3Task": @"ExportToS3"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)exportToS3TaskJSONTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2ExportToS3Task class]];
}

+ (NSValueTransformer *)exportToS3TaskQueryStringTransformer
{
  return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[UAEC2ExportToS3Task class]];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2CreateInstanceExportTaskRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2CreateInstanceExportTaskRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2CreateInstanceExportTaskRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2CreateInstanceExportTaskRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
