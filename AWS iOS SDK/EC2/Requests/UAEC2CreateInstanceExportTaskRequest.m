//
//  UAEC2CreateInstanceExportTaskRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
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

- (void)setAction:(NSString *)action
{
	_action = action;
	
	if (![self.UA_dirtyProperties containsObject:@"action"])
		[self.UA_dirtyProperties addObject:@"action"];
}

- (void)setVersion:(NSString *)version
{
	_version = version;
	
	if (![self.UA_dirtyProperties containsObject:@"version"])
		[self.UA_dirtyProperties addObject:@"version"];
}

- (void)setDescriptionValue:(NSString *)descriptionValue
{
	_descriptionValue = descriptionValue;
	
	if (![self.UA_dirtyProperties containsObject:@"descriptionValue"])
		[self.UA_dirtyProperties addObject:@"descriptionValue"];
}

- (void)setInstanceID:(NSString *)instanceID
{
	_instanceID = instanceID;
	
	if (![self.UA_dirtyProperties containsObject:@"instanceID"])
		[self.UA_dirtyProperties addObject:@"instanceID"];
}

- (void)setTargetEnvironment:(NSString *)targetEnvironment
{
	_targetEnvironment = targetEnvironment;
	
	if (![self.UA_dirtyProperties containsObject:@"targetEnvironment"])
		[self.UA_dirtyProperties addObject:@"targetEnvironment"];
}

- (void)setExportToS3Task:(UAEC2ExportToS3Task *)exportToS3Task
{
	_exportToS3Task = exportToS3Task;
	
	if (![self.UA_dirtyProperties containsObject:@"exportToS3Task"])
		[self.UA_dirtyProperties addObject:@"exportToS3Task"];
}

+ (NSValueTransformer *)exportToS3TaskJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2ExportToS3Task class]];
}

+ (NSValueTransformer *)exportToS3TaskQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2ExportToS3Task class]];
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
