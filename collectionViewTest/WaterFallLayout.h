//
//  WaterFallLayout.h
//  SheKu
//
//  Created by Apple on 15/11/20.
//  Copyright (c) 2015年 ZWZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WaterFallLayout;
typedef void(^CollectionViewTotalHeight)(CGFloat height,CGFloat lastheight);
@protocol WaterFallLayoutDelegate <NSObject>

@required
//计算高度
-(CGFloat)waterFlowLayout:(WaterFallLayout*)waterFlowLayout heightForWidth:(CGFloat)width indexPath:(NSIndexPath*)indexPath;

@end


@interface WaterFallLayout : UICollectionViewLayout

@property (nonatomic, assign) CGFloat headerHeight;
//每一行的间距
@property (nonatomic, assign) CGFloat rowMargin;
//列间距
@property (nonatomic, assign) CGFloat columnMargin;
//允许的最大列数
@property (nonatomic, assign) CGFloat columnCount;
//四边间距
@property (nonatomic, assign) UIEdgeInsets sectionInset;
//实现FL_WaterFallLayoutDelegate协议
@property (nonatomic, weak) id<WaterFallLayoutDelegate>delegate;
@property (nonatomic, copy) CollectionViewTotalHeight totalHeightBlock;

@property (nonatomic, assign) CGFloat headerH;

@end
