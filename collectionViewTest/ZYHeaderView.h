//
//  ZYHeaderView.h
//  collectionViewTest
//
//  Created by LNXD1 on 16/8/31.
//  Copyright © 2016年 LNXD1. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^strHeight)(CGFloat h);

@interface ZYHeaderView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *ddd;

-(void)setText:(NSString *)s block:(strHeight)b;


@end
