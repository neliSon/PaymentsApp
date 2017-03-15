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
    NSLog(@"Processing payment of %ld", (long)amount);
}

@end
