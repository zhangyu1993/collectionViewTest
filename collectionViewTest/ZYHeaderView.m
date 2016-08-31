//
//  ZYHeaderView.m
//  collectionViewTest
//
//  Created by LNXD1 on 16/8/31.
//  Copyright © 2016年 LNXD1. All rights reserved.
//

#import "ZYHeaderView.h"

@implementation ZYHeaderView

- (void)awakeFromNib {
    // Initialization code
}

-(void)setText:(NSString *)s block:(strHeight)b
{
    CGRect textSize = [s boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 20, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17] } context:nil];
    b(textSize.size.height + 20);
    self.ddd.text = s;
    [self layoutIfNeeded];
}

@end
