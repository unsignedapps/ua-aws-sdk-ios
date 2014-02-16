//
//  UAEC2ImportKeyPairResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2ImportKeyPairResponse : UAEC2Response

@property (nonatomic, copy) NSString *keyName;
@property (nonatomic, copy) NSString *keyFingerprint;

@end
