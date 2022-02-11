//
//  UIColor+Addition.h
//  wallet
//
//  Created by huangsw on 2018/2/8.
//  Copyright © 2018年 huangsw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Category)

+ (UIColor *)colorWithHexString:(NSString *)hexString;
+ (UIColor *)colorWithHexARGBString:(NSString *)inColorString;
+ (UIColor *)colorWithHex:(UInt32)hex;
+ (UIColor *)colorWithHex:(UInt32)hex alpha:(float)alpha;

@end
