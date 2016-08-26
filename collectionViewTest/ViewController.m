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
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *headerHeightLayout;
@property (nonatomic, strong) NSString *s;
@property (nonatomic, assign) CGFloat headerHeight;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self.collectionView registerClass:[ZYCollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
//    [self.collectionView registerClass:[UICollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView"];
    self.collectionView.backgroundColor = [UIColor redColor];
    [self loadCollectionData];
}

-(void)loadCollectionData
{
    NSString *str = @"睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东睡会丢啊手段深度暗示对啊恨死u胆红素花都四惠东";
    _s = str;
    CGRect textSize = [str boundingRectWithSize:CGSizeMake([UIScreen mainScreen].bounds.size.width - 20, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName : [UIFont systemFontOfSize:17] } context:nil];
    _headerHeight = 60 + textSize.size.height + 10;
    [self.collectionView reloadData];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    NSLog(@"numberOfSectionsInCollectionView");
    return 1;
   
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSLog(@"numberOfItemsInSection");
    return 50;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellForItemAtIndexPath");
    ZYCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.titLab.text = [NSString stringWithFormat:@"fhsjfhsjhfsdjhfkjsdhfk%ld",indexPath.item];
    [cell layoutIfNeeded];
    return cell;
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"viewForSupplementaryElementOfKind");
    ZYCollectionReusableView *v = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
    _headerHeightLayout.headerReferenceSize = CGSizeMake([UIScreen mainScreen].bounds.size.width, _headerHeight);
    [v setDecData:_s];
    return v;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
