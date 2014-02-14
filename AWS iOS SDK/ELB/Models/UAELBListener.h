//
//  UAELBListener.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@interface UAELBListener : UAELBModel

@property (nonatomic, copy) NSString *protocol;
@property (nonatomic, strong) NSNumber *loadBalancerPort;
@property (nonatomic, copy) NSString *instanceProtocol;
@property (nonatomic, strong) NSNumber *instancePort;
@property (nonatomic, copy) NSString *sSLCertificateID;

@end
