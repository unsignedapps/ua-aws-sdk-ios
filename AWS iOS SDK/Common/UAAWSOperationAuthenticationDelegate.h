//
//  UAAWSOperationAuthenticationDelegate.h
//  Kestrel
//
//  Created by Rob Amos on 17/12/2013.
//  Copyright (c) 2013 Desto. All rights reserved.
//

@import Foundation;
#import "UAAWSRegion.h"
#import "UAAWSRequest.h"

@class UAAWSCredentials;

@protocol UAAWSOperationAuthenticationDelegate <NSObject>

@optional

/**
 * The Amazon Credentials to use.
 *
 * @param   op                  The operation requiring credentials.
 * @returns                     You should return a configured UAAWSCredentials object.
**/
- (UAAWSCredentials *)credentialsForRequest:(UAAWSRequest<UAAWSRequest> *)request error:(NSError **)error;

/**
 * The region to use.
 *
 * This delegate method may not be called if the operation is considered to be "region free",
 * that is, it does not require a region to function (such as IAM, Route53, etc).
 *
 * @param   op                  The operation requiring region information.
 * @returns                     You should return a UAAWSRegion constant.
**/
- (UAAWSRegion)regionForRequest:(UAAWSRequest *)request;


@end
