//
//  PaymentGateway.h
//  PaymentsApp
//
//  Created by Nelson Chow on 2017-03-14.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PaymentGateway : NSObject

-(void)processPaymentAmount:(NSInteger)amount;

@end
