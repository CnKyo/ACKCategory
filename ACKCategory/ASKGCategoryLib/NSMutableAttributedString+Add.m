//
//  NSMutableAttributedString+Add.m
//  MobileProject
//
//  Created by Lever on 2020/7/20.
//  Copyright © 2020 王钶. All rights reserved.
//

#import "NSMutableAttributedString+Add.h"
NSString *const NSImageAttributeName = @"NSImageAttributeName";
NSString *const NSImageBoundsAttributeName = @"NSImageBoundsAttributeName";


@implementation NSMutableAttributedString (Add)

- (NSMutableAttributedString *(^)(NSString *, NSDictionary<NSString *,id> *))add {
    return ^NSMutableAttributedString * (NSString *string, NSDictionary <NSString *,id>*attrDic) {
        
        if ([[attrDic allKeys] containsObject:NSImageAttributeName] && [[attrDic allKeys] containsObject:NSImageBoundsAttributeName]) {
            NSTextAttachment *attach = [[NSTextAttachment alloc] initWithData:nil ofType:nil];
            CGRect rect = CGRectFromString(attrDic[NSImageBoundsAttributeName]);
            attach.bounds = rect;
            attach.image = attrDic[NSImageAttributeName];
            
            [self appendAttributedString:[NSAttributedString attributedStringWithAttachment:attach]];
        }
        else {
            [self appendAttributedString:[[NSAttributedString alloc] initWithString:string attributes:attrDic]];
        }
        
        return self;
    };
}
@end
