//
//  NSMutableAttributedString+Add.h
//  MobileProject
//
//  Created by Lever on 2020/7/20.
//  Copyright © 2020 王钶. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
FOUNDATION_EXTERN NSString *const NSImageAttributeName;  //图片，传UIImage
FOUNDATION_EXTERN NSString *const NSImageBoundsAttributeName; //图片尺寸

@interface NSMutableAttributedString (Add)

- (NSMutableAttributedString *(^)(NSString *,NSDictionary <NSString *,id > *))add;

@end

NS_ASSUME_NONNULL_END
