//
//  ZYCollectionReusableView.h
//  collectionViewTest
//
//  Created by LNXD1 on 16/8/26.
//  Copyright © 2016年 LNXD1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZYCollectionReusableView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *decLab;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *decLabHeightLayout;

-(void)setDecData:(NSString *)str;

@end
