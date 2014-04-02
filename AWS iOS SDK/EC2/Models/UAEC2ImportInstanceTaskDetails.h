//
//  UAEC2ImportInstanceTaskDetails.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2ImportInstanceVolumeDetailItem;

@interface UAEC2ImportInstanceTaskDetails : UAEC2Model

@property (nonatomic, copy) NSArray *volumes;
@property (nonatomic, copy) NSString *instanceID;
@property (nonatomic, copy) NSString *platform;
@property (nonatomic, copy) NSString *descriptionValue;

/**
 * Retrieves the UAEC2ImportInstanceVolumeDetailItem at the specified index.
**/
- (UAEC2ImportInstanceVolumeDetailItem *)volumeAtIndex:(NSUInteger)index;

@end
