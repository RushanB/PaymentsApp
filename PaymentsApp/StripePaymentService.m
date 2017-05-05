//
//  StripePaymentService.m
//  PaymentsApp
//
//  Created by Rushan on 2017-05-05.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Stripe: $%li", (long)amount);

}

-(BOOL)canProcessPayment{
    int someInt = arc4random_uniform(2);
    BOOL processed;
    
    if (someInt == 0){
        processed = FALSE;
    }else{
        processed = TRUE;
    }
    return processed;
}


@end
