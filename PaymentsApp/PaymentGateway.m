//
//  PaymentGateway.m
//  PaymentsApp
//
//  Created by Rushan on 2017-05-05.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount:(NSInteger) amount{
    if([self.paymentDelegate canProcessPayment]){
        [self.paymentDelegate processPaymentAmount:amount];
    }else{
        NSLog(@"Unable to process payment");
    }
}


@end
