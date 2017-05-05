//
//  PaymentDelegate.h
//  PaymentsApp
//
//  Created by Rushan on 2017-05-05.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#ifndef PaymentDelegate_h
#define PaymentDelegate_h

#import <Foundation/Foundation.h>

@class PaymentGateway;

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;

@end

#endif /* PaymentDelegate_h */
