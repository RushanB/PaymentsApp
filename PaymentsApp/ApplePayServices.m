//
//  ApplePayServices.m
//  PaymentsApp
//
//  Created by Rushan on 2017-05-05.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import "ApplePayServices.h"

@implementation ApplePayServices

-(void)processPaymentAmount:(NSInteger)amount{
    NSLog(@"Amazon: $%li", (long)amount);
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
