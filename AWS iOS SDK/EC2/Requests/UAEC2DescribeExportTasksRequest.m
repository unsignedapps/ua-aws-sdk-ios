//
//  UAEC2DescribeExportTasksRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeExportTasksRequest.h"
#import "UAEC2DescribeExportTasksResponse.h"

@interface UAEC2DescribeExportTasksRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2DescribeExportTasksRequest

@synthesize action=_action, version=_version, exportTaskIDs=_exportTaskIDs;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeExportTasks"];
		[self setVersion:@"2013-10-15"];
	}
	return self;
}

- (id)initWithExportTaskIDs:(NSArray *)exportTaskIDs
{
	if (self = [self init])
	{
		[self setExportTaskIDs:[exportTaskIDs mutableCopy]];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2DescribeExportTasksResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"exportTaskIDs": @"ExportTaskId"
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

- (void)setExportTaskIDs:(NSMutableArray *)exportTaskIDs
{
	_exportTaskIDs = exportTaskIDs;
	
	if (![self.UA_dirtyProperties containsObject:@"exportTaskIDs"])
		[self.UA_dirtyProperties addObject:@"exportTaskIDs"];
}

- (void)addExportTaskID:(NSString *)exportTaskID
{
	if (self.exportTaskIDs == nil)
		[self setExportTaskIDs:[NSMutableArray array]];
	[self.exportTaskIDs addObject:exportTaskID];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2DescribeExportTasksRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2DescribeExportTasksRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2DescribeExportTasksRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2DescribeExportTasksRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
