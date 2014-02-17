//
//  UAIAMGetSAMLProviderResponse.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMResponse.h"

@interface UAIAMGetSAMLProviderResponse : UAIAMResponse

@property (nonatomic, copy) NSString *sAMLMetadataDocument;
@property (nonatomic, copy) NSDate *createDate;
@property (nonatomic, copy) NSString *validUntil;

@end
