//
//  UAELBListenerDescription.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License file.
//  Created by Rob Amos.
//
//

#import "UAELBModel.h"

@class UAELBListener;

@interface UAELBListenerDescription : UAELBModel

@property (nonatomic, copy) UAELBListener *listener;
@property (nonatomic, copy) NSArray *policyNames;

@end
