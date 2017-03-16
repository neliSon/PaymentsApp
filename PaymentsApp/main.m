//
//  main.m
//  PaymentsApp
//
//  Created by Nelson Chow on 2017-03-14.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // when the app starts, create a dollar value between 100 - 1000.
        NSInteger dollarValue = arc4random_uniform(901) + 100;
        
        // print menu.
        NSLog(@"Thank you for shopping at ChowDynasty.com.");
        NSLog(@"Your total today is $%0.2ld.", (long)dollarValue);
        NSLog(@"Please select your payment method:");
        NSLog(@"1: Paypal, 2: Stripe, 3: Amazon, 4: Apple");
        
        // get user input.
        char userInput[255];
        fgets(userInput, 255, stdin);
        
        int inputInt = [[NSString stringWithFormat:@"%s", userInput] intValue];
//        NSLog(@"You've selected %d.", inputInt);
        
        // instantiate payment gateway to process payment.
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        
        // instantiate a concrete payment class according to the menu item the user selects.
        switch (inputInt) {
            case 1:
            {
                PaypalPaymentService *paypalPaymentService = [[PaypalPaymentService alloc] init];
                paymentGateway.paymentDelegate = paypalPaymentService;
                [paymentGateway processPaymentAmount:dollarValue];
            }
                break;
            case 2:
            {
                StripePaymentService *stripePaymentService = [[StripePaymentService alloc] init];
                paymentGateway.paymentDelegate = stripePaymentService;
                [paymentGateway processPaymentAmount:dollarValue];
            }
                break;
            case 3:
            {
                AmazonPaymentService *amazonPaymentService = [[AmazonPaymentService alloc] init];
                paymentGateway.paymentDelegate = amazonPaymentService;
                [paymentGateway processPaymentAmount:dollarValue];
                break;
            }
            case 4:
            {
                ApplePaymentService *applePaymentService = [[ApplePaymentService alloc] init];
                paymentGateway.paymentDelegate = applePaymentService;
                [paymentGateway processPaymentAmount:dollarValue];
                break;
            }
            default:
                break;
        }
    }
    return 0;
}
