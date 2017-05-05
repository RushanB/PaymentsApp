//
//  AmazonPaymentService.h
//  PaymentsApp
//
//  Created by Rushan on 2017-05-05.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"


@interface AmazonPaymentService : NSObject <PaymentDelegate>

-(void)processPaymentAmount:(NSInteger)amount;

@end
