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
		[self setVersion:@"2013-10-15"];
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
        @"descriptionValue": @"DescriptionValue",
        @"launchSpecification": @"LaunchSpecification",
        @"diskImages": @"DiskImage",
        @"platform": @"Platform"
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

- (void)setDryRun:(BOOL)dryRun
{
	_dryRun = dryRun;
	
	if (![self.UA_dirtyProperties containsObject:@"dryRun"])
		[self.UA_dirtyProperties addObject:@"dryRun"];
}

- (void)setDescriptionValue:(NSString *)descriptionValue
{
	_descriptionValue = descriptionValue;
	
	if (![self.UA_dirtyProperties containsObject:@"descriptionValue"])
		[self.UA_dirtyProperties addObject:@"descriptionValue"];
}

- (void)setLaunchSpecification:(UAEC2ImportInstanceLaunchSpecification *)launchSpecification
{
	_launchSpecification = launchSpecification;
	
	if (![self.UA_dirtyProperties containsObject:@"launchSpecification"])
		[self.UA_dirtyProperties addObject:@"launchSpecification"];
}

- (void)setDiskImages:(NSMutableArray *)diskImages
{
	_diskImages = diskImages;
	
	if (![self.UA_dirtyProperties containsObject:@"diskImages"])
		[self.UA_dirtyProperties addObject:@"diskImages"];
}

- (void)setPlatform:(NSString *)platform
{
	_platform = platform;
	
	if (![self.UA_dirtyProperties containsObject:@"platform"])
		[self.UA_dirtyProperties addObject:@"platform"];
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
