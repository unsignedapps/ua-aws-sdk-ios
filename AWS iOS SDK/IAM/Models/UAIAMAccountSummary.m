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
        @"users": @"entry/value[../key/text() = \"Users\"]",
        @"usersQuota": @"entry/value[../key/text() = \"UsersQuota\"]",
        @"groups": @"entry/value[../key/text() = \"Groups\"]",
        @"groupsQuota": @"entry/value[../key/text() = \"GroupsQuota\"]",
        @"serverCertificates": @"entry/value[../key/text() = \"ServerCertificates\"]",
        @"serverCertificatesQuota": @"entry/value[../key/text() = \"ServerCertificatesQuota\"]",
        @"userPolicySizeQuota": @"entry/value[../key/text() = \"UserPolicySizeQuota\"]",
        @"groupPolicySizeQuota": @"entry/value[../key/text() = \"GroupPolicySizeQuota\"]",
        @"groupsPerUserQuota": @"entry/value[../key/text() = \"GroupsPerUserQuota\"]",
        @"signingCertificatesPerUserQuota": @"entry/value[../key/text() = \"SigningCertificatesPerUserQuota\"]",
        @"accessKeysPerUserQuota": @"entry/value[../key/text() = \"AccessKeysPerUserQuota\"]",
        @"mFADevices": @"entry/value[../key/text() = \"MFADevices\"]",
        @"mFADevicesInUse": @"entry/value[../key/text() = \"MFADevicesInUse\"]",
        @"accountMFAEnabled": @"entry/value[../key/text() = \"Users\"]"
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
    return [MTLValueTransformer UA_XMLTransformerForBooleanString];
}

@end
