//
//  UAKMSKeyMetadata.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAKMSModel.h"

@interface UAKMSKeyMetadata : UAKMSModel

@property (nonatomic, copy) NSString *aWSAccountID;
@property (nonatomic, copy) NSString *keyID;
@property (nonatomic, copy) NSString *arn;
@property (nonatomic, copy) NSDate *creationDate;
@property (nonatomic) BOOL enabled;
@property (nonatomic, copy) NSString *descriptionValue;
@property (nonatomic, copy) NSString *keyUsage;

@end
