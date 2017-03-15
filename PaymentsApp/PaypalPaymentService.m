//
//  PaypalPaymentService.m
//  PaymentsApp
//
//  Created by Nelson Chow on 2017-03-14.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Paypal is processing your payment of %ld", (long)amount);
}

@end
