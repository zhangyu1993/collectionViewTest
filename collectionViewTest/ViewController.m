//
//  ViewController.m
//  collectionViewTest
//
//  Created by LNXD1 on 16/8/26.
//  Copyright © 2016年 LNXD1. All rights reserved.
//

#import "ViewController.h"
#import "ZYCollectionViewCell.h"
#import "ZYCollectionReusableView.h"
#import "WaterFallLayout.h"
#import "ZYHeaderView.h"
#define kScreenWidth ([UIScreen mainScreen].bounds.size.width)
#define kScreenHeight ([UIScreen mainScreen].bounds.size.height)
@interface ViewController () <WaterFallLayoutDelegate>

@property (weak, nonatomic) IBOutlet WaterFallLayout *waterLayout;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *headerHeightLayout;
@property (nonatomic, strong) NSString *s;
@property (nonatomic, assign) CGFloat headerHeight;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self.collectionView registerClass:[ZYCollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
    [self.collectionView registerClass:[ZYCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView"];
    [self.collectionView registerNib:[UINib nibWithNibName:@"ZYHeaderView" bundle:[NSBundle mainBundle]] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"h"];
    _waterLayout.rowMargin = 5;
    _waterLayout.columnMargin = 5;
    _waterLayout.columnCount = 2;
    _waterLayout.sectionInset = UIEdgeInsetsMake(5, 5, 5, 5);
    _waterLayout.headerHeight = 200;
    _waterLayout.delegate = self;
    _waterLayout.headerH = 0;
    self.collectionView.backgroundColor = [UIColor redColor];
    [self loadCollectionData];
}

-(void)loadCollectionData
{
    NSString *str = @"睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东";
    _s = str;
    CGRect textSize = [str boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 20, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17] } context:nil];
    _headerHeight = 60 + textSize.size.height + 10;
    _waterLayout.headerH = textSize.size.height + 10;
    [self.collectionView reloadData];
}

-(CGFloat)waterFlowLayout:(WaterFallLayout *)waterFlowLayout heightForWidth:(CGFloat)width indexPath:(NSIndexPath *)indexPath
{
    
    return indexPath.item * 10;
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
   // NSLog(@"numberOfSectionsInCollectionView");
    return 1;
   
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
   // NSLog(@"numberOfItemsInSection");
    return 50;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
  //  NSLog(@"cellForItemAtIndexPath");
    ZYCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.titLab.text = [NSString stringWithFormat:@"fhsjfhsjhfsdjhfkjsdhfk%ld",indexPath.item];
    [cell layoutIfNeeded];
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"viewForSupplementaryElementOfKind");
    ZYHeaderView*v = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"h" forIndexPath:indexPath];
    [v setText:_s block:^(CGFloat h) {
        
    }];
    
    return v;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
