//
//  UAEC2ConversionTask.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps 2014. See License file.
//  Created by Rob Amos.
//
//

#import "UAEC2Model.h"

@class UAEC2ImportInstanceTaskDetails, UAEC2ImportVolumeTaskDetails, UAEC2Tag;

@interface UAEC2ConversionTask : UAEC2Model

@property (nonatomic, copy) NSString *conversionTaskID;
@property (nonatomic, copy) NSDate *expirationTime;
@property (nonatomic, copy) UAEC2ImportInstanceTaskDetails *importInstance;
@property (nonatomic, copy) UAEC2ImportVolumeTaskDetails *importVolume;
@property (nonatomic, copy) NSString *state;
@property (nonatomic, copy) NSString *statusMessage;
@property (nonatomic, copy) NSArray *tags;

/**
 * Retrieves the UAEC2Tag at the specified index.
**/
- (UAEC2Tag *)tagAtIndex:(NSUInteger)index;

@end
