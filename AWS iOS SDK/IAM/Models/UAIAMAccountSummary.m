//
//  UAIAMAccountSummary.m
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAIAMAccountSummary.h"

@implementation UAIAMAccountSummary

@synthesize users=_users, usersQuota=_usersQuota, groups=_groups, groupsQuota=_groupsQuota, serverCertificates=_serverCertificates, serverCertificatesQuota=_serverCertificatesQuota, userPolicySizeQuota=_userPolicySizeQuota, groupPolicySizeQuota=_groupPolicySizeQuota, groupsPerUserQuota=_groupsPerUserQuota, signingCertificatesPerUserQuota=_signingCertificatesPerUserQuota, accessKeysPerUserQuota=_accessKeysPerUserQuota, mFADevices=_mFADevices, mFADevicesInUse=_mFADevicesInUse, accountMFAEnabled=_accountMFAEnabled;

+ (NSString *)XPathPrefix
{
    return @"./";
}

+ (NSDictionary *)XMLKeyPathsByPropertyKey
{
    // Start with super's key paths (if there are any)
    NSMutableDictionary *keyPaths = [[UAIAMModel XMLKeyPathsByPropertyKey] mutableCopy];

    [keyPaths addEntriesFromDictionary:
    @{
        @"users": @"iam:entry/iam:value[../iam:key/text() = \"Users\"]",
        @"usersQuota": @"iam:entry/iam:value[../iam:key/text() = \"UsersQuota\"]",
        @"groups": @"iam:entry/iam:value[../iam:key/text() = \"Groups\"]",
        @"groupsQuota": @"iam:entry/iam:value[../iam:key/text() = \"GroupsQuota\"]",
        @"serverCertificates": @"iam:entry/iam:value[../iam:key/text() = \"ServerCertificates\"]",
        @"serverCertificatesQuota": @"iam:entry/iam:value[../iam:key/text() = \"ServerCertificatesQuota\"]",
        @"userPolicySizeQuota": @"iam:entry/iam:value[../iam:key/text() = \"UserPolicySizeQuota\"]",
        @"groupPolicySizeQuota": @"iam:entry/iam:value[../iam:key/text() = \"GroupPolicySizeQuota\"]",
        @"groupsPerUserQuota": @"iam:entry/iam:value[../iam:key/text() = \"GroupsPerUserQuota\"]",
        @"signingCertificatesPerUserQuota": @"iam:entry/iam:value[../iam:key/text() = \"SigningCertificatesPerUserQuota\"]",
        @"accessKeysPerUserQuota": @"iam:entry/iam:value[../iam:key/text() = \"AccessKeysPerUserQuota\"]",
        @"mFADevices": @"iam:entry/iam:value[../iam:key/text() = \"MFADevices\"]",
        @"mFADevicesInUse": @"iam:entry/iam:value[../iam:key/text() = \"MFADevicesInUse\"]",
        @"accountMFAEnabled": @"iam:entry/iam:value[../iam:key/text() = \"Users\"]"
    }];
    return [keyPaths copy];
}

+ (NSValueTransformer *)usersXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)usersQuotaXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)groupsXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)groupsQuotaXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)serverCertificatesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)serverCertificatesQuotaXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)userPolicySizeQuotaXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)groupPolicySizeQuotaXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)groupsPerUserQuotaXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)signingCertificatesPerUserQuotaXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)accessKeysPerUserQuotaXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)mFADevicesXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)mFADevicesInUseXMLTransformer
{
  return [NSValueTransformer UA_XMLTransformerForDouble];
}

+ (NSValueTransformer *)accountMFAEnabledXMLTransformer
{
    return [UAMTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
