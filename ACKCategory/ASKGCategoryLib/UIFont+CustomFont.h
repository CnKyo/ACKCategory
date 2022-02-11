//
//  UIFont+CustomFont.h
//  wallet
//
//  Created by huangsw on 2018/2/8.
//  Copyright © 2018年 huangsw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIFont (CustomFont)
/**
 统一默认字体
 
 @param fontSize fontSize description
 @return return value description
 */
+ (UIFont *)defaultFontWithSize:(CGFloat)fontSize;

/**
 统一默认字体(粗)
 
 @param fontSize fontSize description
 @return return value description
 */
+ (UIFont *)boldDefaultFontWithSize:(CGFloat)fontSize;

/**
 统一默认字体(Light)
 
 @param fontSize fontSize description
 @return return value description
 */
+ (UIFont *)lightDefaultFontWithSize:(CGFloat)fontSize;



//打印出所有字体 一般导入字体后打印一下看一下是否导入成功
+ (void)printAllFonts;
@end

