//
//  UASQSDataTypes.h
//  AWS iOS SDK
//
//  Copyright © Unsigned Apps ${year}. See License File.
//  Created by Rob Amos.
//
//

// UASQSActionName
typedef NS_ENUM(NSUInteger, UASQSActionName) {
	UASQSActionNameUnknown = 0,
	UASQSActionNameAll = 1,
	UASQSActionNameSendMessage = 2,
	UASQSActionNameReceiveMessage = 3,
	UASQSActionNameDeleteMessage = 4,
	UASQSActionNameChangeMessageVisibility = 5,
	UASQSActionNameGetQueueAttributes = 6,
	UASQSActionNameGetQueueUrl = 7
};

static NSString * const UASQSQueueAttributeAll = @"All";
static NSString * const UASQSQueueAttributePolicy = @"Policy";
static NSString * const UASQSQueueAttributeVisibilityTimeout = @"VisibilityTimeout";
static NSString * const UASQSQueueAttributeMaximumMessageSize = @"MaximumMessageSize";
static NSString * const UASQSQueueAttributeMessageRetentionPeriod = @"MessageRetentionPeriod";
static NSString * const UASQSQueueAttributeApproximateNumberOfMessages = @"ApproximateNumberOfMessages";
static NSString * const UASQSQueueAttributeApproximateNumberOfMessagesNotVisible = @"ApproximateNumberOfMessagesNotVisible";
static NSString * const UASQSQueueAttributeCreatedTimestamp = @"CreatedTimestamp";
static NSString * const UASQSQueueAttributeLastModifiedTimestamp = @"LastModifiedTimestamp";
static NSString * const UASQSQueueAttributeQueueARN = @"QueueArn";
static NSString * const UASQSQueueAttributeApproximateNumberOfMessagesDelayed = @"ApproximateNumberOfMessagesDelayed";
static NSString * const UASQSQueueAttributeDelaySeconds = @"DelaySeconds";
static NSString * const UASQSQueueAttributeReceiveMessageWaitTimeSeconds = @"ReceiveMessageWaitTimeSeconds";
static NSString * const UASQSQueueAttributeRedrivePolicy = @"RedrivePolicy";
static NSString * const UASQSQueueAttributeApproximateFirstReceiveTimestamp = @"ApproximateFirstReceiveTimestamp";
static NSString * const UASQSQueueAttributeApproximateReceiveCount = @"ApproximateReceiveCount";
static NSString * const UASQSQueueAttributeSenderID = @"SenderId";
static NSString * const UASQSQueueAttributeSentTimestamp = @"SentTimestamp";