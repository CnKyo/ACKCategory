//
//  UIFont+CustomFont.m
//  wallet
//
//  Created by huangsw on 2018/2/8.
//  Copyright © 2018年 huangsw. All rights reserved.
//

#import "UIFont+CustomFont.h"

@implementation UIFont (CustomFont)

+ (UIFont *)defaultFontWithSize:(CGFloat)fontSize {
    return [UIFont systemFontOfSize:fontSize];
}

+ (UIFont *)boldDefaultFontWithSize:(CGFloat)fontSize {
    return [UIFont boldSystemFontOfSize:fontSize];
}

+ (UIFont *)lightDefaultFontWithSize:(CGFloat)fontSize{
    return [UIFont fontWithName:@"Comfortaa-Light" size:fontSize];
}

+ (void)printAllFonts
{
    NSArray *fontFamilies = [UIFont familyNames];
    for (NSString *fontFamily in fontFamilies)
    {
        NSArray *fontNames = [UIFont fontNamesForFamilyName:fontFamily];
        NSLog (@"%@: %@", fontFamily, fontNames);
    }
}
@end
