//
//  ViewAdapter.m
//  DWBaseAdapter
//
//  Created by 丁巍 on 2019/3/25.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "ViewAdapter.h"
#import "DWBaseTableAdapter+Action.h"
#import "DWBaseTableAdapter+Refresh.h"
#import "ViewAdapterTypeCell1.h"
#import "ViewAdapterTypeCell2.h"
#import "ViewAdapterTypeCell3.h"
#import "ViewAdapterTypeCell4.h"
#import "ViewAdapterTypeCell5.h"
#import "CellModel2.h"

typedef NS_ENUM(NSInteger, ViewAdapterType){
    ViewAdapterType_cell1 = 0,
    ViewAdapterType_cell2,
    ViewAdapterType_cell3,
    ViewAdapterType_cell4,
    ViewAdapterType_cell5,
};

@interface ViewAdapter() <ViewAdapterTypeCell4Delegate>

@property (nonatomic, strong) NSString *testKey;

@end

@implementation ViewAdapter

-(NSArray *)instanceDataSource{
    return [self testArray:self.testKey];
}



-(NSArray *)testArray:(NSString * __nullable)str{
    
    NSMutableArray *dataArray = [NSMutableArray array];
    
    if ([str length] > 0) {
        
        return [dataArray copy];
    }
    
    
    DWBaseTableDataSourceModel *cellModel_1 = [DWBaseTableDataSourceModel initWithTag:ViewAdapterType_cell1 data:@(100) cell:[ViewAdapterTypeCell1 class]];
    [dataArray addObject:cellModel_1];
    
    
    CellModel2 *model2 = [[CellModel2 alloc] init];
    model2.title  = @"什么什么什么?";
    model2.height = 100;
    DWBaseTableDataSourceModel *cellModel_2 = [DWBaseTableDataSourceModel initWithTag:ViewAdapterType_cell2 data:model2 cell:[ViewAdapterTypeCell2 class]];
    [dataArray addObject:cellModel_2];
    
    
    DWBaseTableDataSourceModel *cellModel_3 = [DWBaseTableDataSourceModel initWithTag:ViewAdapterType_cell3 data:@{@"text":@"这是个传入参数, 并且cell高度也是传入model指定的", @"height":@(80)} cell:[ViewAdapterTypeCell3 class]];
    [dataArray addObject:cellModel_3];
    
    
    DWBaseTableDataSourceModel *cellModel_4 = [DWBaseTableDataSourceModel initWithTag:ViewAdapterType_cell4 data:@{@"text":@"这是个传入cell自定义代理"} cell:[ViewAdapterTypeCell4 class] delegate:self respons:@[@(ViewAdapterType_cell3)]];
    [dataArray addObject:cellModel_4];
    
    
    DWBaseTableDataSourceModel *cellModel_5 = [DWBaseTableDataSourceModel initWithTag:ViewAdapterType_cell4 data:nil cell:[ViewAdapterTypeCell5 class]];
    [dataArray addObject:cellModel_5];
    
    return [dataArray copy];
}



#pragma mark - custom delegate

-(void)cell4_clickDelegate{
    NSLog(@"点击了 cell4");
    
    
}


@end
