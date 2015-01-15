//
//  UAEC2CreateKeyPairResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Response.h"

@interface UAEC2CreateKeyPairResponse : UAEC2Response

@property (nonatomic, copy) NSString *keyName;
@property (nonatomic, copy) NSString *keyFingerprint;
@property (nonatomic, copy) NSString *keyMaterial;

@end
