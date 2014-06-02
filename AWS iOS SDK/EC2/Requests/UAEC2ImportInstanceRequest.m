//
//  UAEC2ImportInstanceRequest.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2ImportInstanceRequest.h"
#import "UAEC2ImportInstanceResponse.h"
#import "UAEC2ImportInstanceLaunchSpecification.h"
#import "UAEC2DiskImage.h"

@interface UAEC2ImportInstanceRequest ()

@property (nonatomic, copy) NSString *action;
@property (nonatomic, copy) NSString *version;

@end

@implementation UAEC2ImportInstanceRequest

@synthesize action=_action, version=_version, dryRun=_dryRun, descriptionValue=_descriptionValue, launchSpecification=_launchSpecification, diskImages=_diskImages, platform=_platform;

- (id)init
{
	if (self = [super init])
	{
		[self setAction:@"ImportInstance"];
		[self setVersion:@"2014-02-01"];
	}
	return self;
}

- (Class)UA_ResponseClass
{
	return [UAEC2ImportInstanceResponse class];
}

+ (NSDictionary *)queryStringKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAEC2Request queryStringKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"action": @"Action",
        @"version": @"Version",
        @"dryRun": @"DryRun",
        @"descriptionValue": @"Description",
        @"launchSpecification": @"LaunchSpecification",
        @"diskImages": @"DiskImage",
        @"platform": @"Platform"
    }];
    return [keyPaths copy];
}

- (UAEC2DiskImage *)diskImageAtIndex:(NSUInteger)index
{
    if (self.diskImages == nil || index >= ([self.diskImages count]-1))
        return nil;

    return [self.diskImages objectAtIndex:index];
}

+ (NSValueTransformer *)launchSpecificationJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONDictionaryTransformerWithModelClass:[UAEC2ImportInstanceLaunchSpecification class]];
}

+ (NSValueTransformer *)diskImagesJSONTransformer
{
  return [NSValueTransformer UAMTL_JSONArrayTransformerWithModelClass:[UAEC2DiskImage class]];
}

+ (NSValueTransformer *)dryRunQueryStringTransformer
{
    return [UAMTLValueTransformer UA_JSONTransformerForBooleanString];
}

+ (NSValueTransformer *)launchSpecificationQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringDictionaryTransformerWithModelClass:[UAEC2ImportInstanceLaunchSpecification class]];
}

+ (NSValueTransformer *)diskImagesQueryStringTransformer
{
	return [NSValueTransformer UAMTL_QueryStringArrayTransformerWithModelClass:[UAEC2DiskImage class]];
}

- (void)addDiskImage:(UAEC2DiskImage *)diskImage
{
	if (self.diskImages == nil)
		[self setDiskImages:[NSMutableArray array]];
	[self.diskImages addObject:diskImage];
}

#pragma mark - Invocation

- (void)invokeWithOwner:(id)owner completionBlock:(UAEC2ImportInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner shouldContinueWaitingBlock:(UAEC2ImportInstanceRequestShouldContinueWaitingBlock)shouldContinueWaitingBlock completionBlock:(UAEC2ImportInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:owner];
    [self setUA_ShouldContinueWaiting:shouldContinueWaitingBlock];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

- (void)waitWithOwner:(id)owner untilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)array completionBlock:(UAEC2ImportInstanceRequestCompletionBlock)completionBlock
{
    [self setUA_Owner:self];
    [self setUA_ShouldContinueWaiting:[UAAWSRequest UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:keyPath isInArray:array]];
    [self setUA_RequestCompletionBlock:completionBlock];
    [self invoke];
}

@end
