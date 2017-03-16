//
//  PaymentGateway.m
//  PaymentsApp
//
//  Created by Nelson Chow on 2017-03-14.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmount:(NSInteger)amount {
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:amount];
    } else {
        NSLog(@"Sorry but we are unable to process your payment at this time.");
    }
}

@end
