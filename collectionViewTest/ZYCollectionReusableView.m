//
//  ZYCollectionReusableView.m
//  collectionViewTest
//
//  Created by LNXD1 on 16/8/26.
//  Copyright © 2016年 LNXD1. All rights reserved.
//

#import "ZYCollectionReusableView.h"

@implementation ZYCollectionReusableView
-(void)setDecData:(NSString *)str
{
    self.decLab.text = str;
    [self layoutIfNeeded];
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}



@end
