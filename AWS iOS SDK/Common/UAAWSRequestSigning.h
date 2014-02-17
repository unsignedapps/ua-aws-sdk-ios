//
//  UAAWSRequestSigning.h
//  AWS iOS SDK
//
//  Created by Rob Amos on 3/02/2014.
//
//

#import <Foundation/Foundation.h>
#import "UAAWSRequest.h"
#import "UAAWSRegion.h"

@class UAAWSRequest, UAAWSCredentials;

@interface UAAWSRequestSigning : NSObject

+ (void)signURLRequest:(NSMutableURLRequest *)urlRequest ofRequest:(UAAWSRequest<UAAWSRequest> *)request inRegion:(UAAWSRegion)region withCredentials:(UAAWSCredentials *)credentials;

@end
