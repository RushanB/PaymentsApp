//
//  main.m
//  PaymentsApp
//
//  Created by Rushan on 2017-05-05.
//  Copyright © 2017 RushanBenazir. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "PayPalPaymentServices.h"
#import "ApplePayServices.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int randDollar = arc4random_uniform(901)+100;
        
        NSLog(@"\nThank you for shopping at Acme.com\nYour total today is $%i\nPlease select your payment method\n1:Stripe 2:PayPal 3:Amazon 4:ApplePay", randDollar);
        
        char str[100];
        fgets (str, 100, stdin);
        
        NSString *inputString = [[NSString alloc] initWithUTF8String:str];
        inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        int choice = [inputString intValue];
        
        PaymentGateway *newPayment = [[PaymentGateway alloc] init];
        
        NSLog(@"Input was %d", choice);
        
        switch(choice){
            case 1:{
                StripePaymentService *newStripe = [[StripePaymentService alloc]init];
                newPayment.paymentDelegate = newStripe;
                [newPayment processPaymentAmount: randDollar];
                break;
            }
            case 2:{
                PayPalPaymentServices *newPayPal = [[PayPalPaymentServices alloc]init];
                newPayment.paymentDelegate = newPayPal;
                [newPayment processPaymentAmount: randDollar];
                break;
            }
            case 3:{
                AmazonPaymentService *newAmazon = [[AmazonPaymentService alloc]init];
                newPayment.paymentDelegate = newAmazon;
                [newPayment processPaymentAmount:randDollar];
                break;
            }
            case 4:{
                ApplePayServices *newApple = [[ApplePayServices alloc]init];
                newPayment.paymentDelegate = newApple;
                [newPayment processPaymentAmount:randDollar];
                break;
            }
            default:
                break;
        }
    }
    return 0;
}
