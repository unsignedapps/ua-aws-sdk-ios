//
//  UAEC2DescribeExportTasksRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2DescribeExportTasksRequest.h"
#import "UAAWSAdditionalAccessors.h"
#import "UAEC2DescribeExportTasksResponse.h"

@interface UAEC2DescribeExportTasksRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"

@implementation UAEC2DescribeExportTasksRequest

@synthesize action=_action, version=_version, exportTaskIDs=_exportTaskIDs;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"DescribeExportTasks"];
		[self setVersion:@"2014-10-01"];
		
		[self UA_addAtIndexAdditionalAccessorForSelector:@selector(exportTaskIDAtIndex:) propertyName:@"exportTaskIDs"];
		[self UA_addAddObjectAdditionalAccessorForSelector:@selector(addExportTaskID:) propertyName:@"exportTaskIDs"];
	}
	return self;
}

- (id)initWithExportTaskIDs:(NSArray *)exportTaskIDs
{
	if ((self = [self init]))
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

/*#pragma mark - Invocation

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
*/
@end

#pragma clang diagnostic pop