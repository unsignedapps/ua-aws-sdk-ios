//
//  UAIAMAccountSummary.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2015. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMModel.h"

@interface UAIAMAccountSummary : UAIAMModel

@property (nonatomic, strong) NSNumber *users;
@property (nonatomic, strong) NSNumber *usersQuota;
@property (nonatomic, strong) NSNumber *groups;
@property (nonatomic, strong) NSNumber *groupsQuota;
@property (nonatomic, strong) NSNumber *serverCertificates;
@property (nonatomic, strong) NSNumber *serverCertificatesQuota;
@property (nonatomic, strong) NSNumber *userPolicySizeQuota;
@property (nonatomic, strong) NSNumber *groupPolicySizeQuota;
@property (nonatomic, strong) NSNumber *groupsPerUserQuota;
@property (nonatomic, strong) NSNumber *signingCertificatesPerUserQuota;
@property (nonatomic, strong) NSNumber *accessKeysPerUserQuota;
@property (nonatomic, strong) NSNumber *mFADevices;
@property (nonatomic, strong) NSNumber *mFADevicesInUse;
@property (nonatomic) BOOL accountMFAEnabled;

@end
