//
//  UAAWSRequest.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 30/01/2014.
//
//

#import <Foundation/Foundation.h>
#import "UAAWSRegion.h"

typedef NS_ENUM(NSInteger, UAAWSSignatureVersion)
{
    UAAWSSignatureNotRequired = -1,
    UAAWSSignatureVersionUnknown = 0,
    UAAWSSignatureVersion2 = 2,
    UAAWSSignatureVersion4 = 4
};

typedef void(^UAAWSOperationCompletionBlock)(id response, NSError *error);
typedef BOOL(^UAAWSOperationShouldContinueWaitingBlock)(id response, NSError *error);

static NSString * const UAAWSErrorDomain = @"UAAWSErrorDomain";
static NSString * const UAAWSErrorName = @"UAAWSErrorCode";
static NSString * const UAAWSErrorMessage = @"UAAWSErrorReason";

typedef NS_ENUM(NSInteger, UAAWSErrorCode)
{
    UAAWSErrorCodeClient = 0,
    UAAWSErrorCodeServer = 1
};

static NSString * const UAAWSResponseExceptionParseError = @"UAAWSResponseExceptionParseError";
static NSString * const UAAWSResponseExceptionParseErrorURLResponseKey = @"UAAWSResponseExceptionParseErrorURLResponseKey";
static NSString * const UAAWSResponseExceptionParseErrorDataKey = @"UAAWSResponseExceptionParseErrorDataKey";
static NSString * const UAAWSResponseExceptionParseErrorErrorKey = @"UAAWSResponseExceptionParseErrorErrorKey";

@class UAAWSOperationQueue, UAAWSCredentials;

@interface UAAWSRequest : NSOperation


/**
 * A reference to the NSOperationQueue subclass that we are residing on. Used for authentication.
**/
@property (nonatomic, weak) UAAWSOperationQueue *UA_Queue;

/**
 * The owner of this operation. Typically this is the controller or object that has initiated the request.
 *
 * When your view controller is about to disappear, or your object will be dealloc'd you should call
 * [[UAAWSOperationQueue sharedInstance] cancelAllRequestsWithOwner:obj] to have the matching operations
 * cancelled.
**/
@property (nonatomic, weak) id UA_Owner;

/**
 * The credentials to use to execute this request. If this is nil it will request credentials from the UAAWSOperationQueue's delegate.
**/
@property (nonatomic, strong) UAAWSCredentials *UA_Credentials;

/**
 * The region to execute this request in. If this is nil it will request the region from the UAAWSOperationQueue's delegate.
**/
@property (nonatomic) UAAWSRegion UA_Region;

/**
 * The request completion block (so named to avoid conflicts with the default completionBlock property).
 *
 * You typically provide this on initiation but you can change it as required. This completion block
 * is always called on the main thread.
 *
 * It accepts two arguments: the response from the AWS SDK (which may be nil), an an instance of NSError, if one occured.
**/
@property (nonatomic, copy) UAAWSOperationCompletionBlock UA_RequestCompletionBlock;

/**
 * The block used to determine if the operation has completed or should continue waiting. The operation will wait
 * automatically as long as this block returns YES. Up to the number maximum number of polling attempts.
 *
 * It accepts two arguments: the response from the AWS SDK (which may be nil) and an instance of NSException, if one occured.
 **/
@property (nonatomic, copy) UAAWSOperationShouldContinueWaitingBlock UA_ShouldContinueWaiting;


/** @name Execution Management **/

/**
 * Whether the operation is currently executing.
**/
@property (nonatomic, getter=isExecuting) BOOL executing;

/**
 * Whether the operation is finished.
**/
@property (nonatomic, getter=isFinished) BOOL finished;

/**
 * Executes the request on the default queue.
**/
- (void)invoke;

/**
 * Returns a should continue waiting block until the value at the specified keypath is in the specified array.
**/
+ (UAAWSOperationShouldContinueWaitingBlock)UA_ShouldContinueWaitingBlockUntilValueAtKeyPath:(NSString *)keyPath isInArray:(NSArray *)values;

@end

@protocol UAAWSRequest <NSObject>

@required

/**
 * The URL to access the AWS API Endpoint within the given region.
 *
 * @param   region              A UAAWSRegion that represents the service region.
 * @returns                     A NSURL object that can be used to access the API.
**/
- (NSURL *)UA_EndpointURLForRegion:(UAAWSRegion)region;

/**
 * The Signature version to use
**/
- (UAAWSSignatureVersion)UA_SignatureVersion;

/**
 * The supported version of the API that this class supports.
**/
- (NSString *)UA_APIVersion;

/**
 * The path to execute the URL against
**/
- (NSString *)UA_RequestPath;

/**
 * The HTTP method used to execute the request.
**/
- (NSString *)UA_RequestHTTPMethod;

/**
 * The serialisation class used to create the payload.
 *
 * This class *must* conform to <UAAWSPayloadSerialisation>.
**/
- (Class)UA_RequestSerialisationClass;

/**
 * The serialisation class used to parse and map the payload.
 *
 * This class *must* conform to <UAAWSPayloadSerialisation>.
**/
- (Class)UA_ResponseSerialisationClass;

/**
 * The class used for responses to the request.
 *
 * Typically this is supplied on a per-request basis, and must
 * subclass UAAWSResponse, and conform to <MTLModel>.
**/
- (Class)UA_ResponseClass;

/**
 * The class used to generate errors from the the response.
 *
 * This class *must* subclass NSObject and conform to <MTLModel, UAAWSError>.
**/
- (Class)UA_ErrorClass;

/**
 * The service is "region-free", that is, it operates without region restrictions,
 * but the service will still run out of US-East-1.
**/
- (BOOL)UA_isRegionFree;

@end
