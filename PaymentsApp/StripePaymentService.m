//
//  StripePaymentService.m
//  PaymentsApp
//
//  Created by Nelson Chow on 2017-03-14.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

-(void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Stripe processed your payment of $%ld.", (long)amount);
}

-(BOOL)canProcessPayment {
    if (arc4random_uniform(2) == 1) {
        return YES;
    } else {
        return NO;
    }
}

@end
