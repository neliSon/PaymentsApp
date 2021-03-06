//
//  PaymentDelegate.h
//  PaymentsApp
//
//  Created by Nelson Chow on 2017-03-14.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

-(void)processPaymentAmount:(NSInteger)amount;
-(BOOL)canProcessPayment;

@end
