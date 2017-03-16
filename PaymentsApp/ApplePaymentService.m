//
//  ApplePaymentService.m
//  PaymentsApp
//
//  Created by Nelson Chow on 2017-03-15.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"ApplePay is processing your payment of $%ld.", (long)amount);
}

-(BOOL)canProcessPayment {
    return YES;
}

@end
