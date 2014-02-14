//
//  UAAWSOperationAuthenticationDelegate.h
//  Kestrel
//
//  Created by Rob Amos on 17/12/2013.
//  Copyright (c) 2013 Desto. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UAAWSRegion.h"

@class UAAWSCredentials, UAAWSRequest;

@protocol UAAWSOperationAuthenticationDelegate <NSObject>

/**
 * The Amazon Credentials to use.
 *
 * @param   op                  The operation requiring credentials.
 * @returns                     You should return a configured UAAWSCredentials object.
**/
- (UAAWSCredentials *)credentialsForRequest:(UAAWSRequest *)request;

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
