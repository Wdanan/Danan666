//
//  YSViewModel.m
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "YSViewModel.h"

@implementation YSViewModel

-(id)initWithYSListType:(YSListType)type{
    
    if (self = [super init]) {
        _type = type;
    }
    return self;
}

-(NSInteger)rowNumber{
    return self.dataArr.count;
    
}

-(YSDataItemsModel *)ysListModelForRow:(NSInteger)row{
    
    return self.dataArr[row];
    
}

-(NSString *)titleForRow:(NSInteger)row{
    return [self ysListModelForRow:row].title;
}

-(NSURL *)coverSmallForRow:(NSInteger)row{
    
    return [NSURL URLWithString:[self ysListModelForRow:row].cover_small];
    
    
}



-(NSInteger)IDForRow:(NSInteger)ID{
    return [self ysListModelForRow:ID].ID;
 
}


-(void)refreshDataCompletionHandle:(CompletionHandle)completionHandle{
    _publishTime = @"0";
    _page_index = 1;
    
    [self getDataFromNetCompleteHandle:completionHandle];
    
    
}


-(void)getMoreDataCompletionHandle:(CompletionHandle)completionHandle{
    YSDataItemsModel *obj = self.dataArr.lastObject;
    _publishTime = obj.publish_time;
    _page_index += 1;
    
    [self getDataFromNetCompleteHandle:completionHandle];
    
}

-(void)getDataFromNetCompleteHandle:(CompletionHandle)completionHandle{
    [YSNetManager getYSListType:_type page_index:_page_index channel_id:_channel_id
               completionHandle:^(YSModel *model, NSError *error) {
        
        if ([_publishTime isEqualToString:@"0"]) {
            [self.dataArr removeAllObjects];
        }
        
        [self.dataArr addObjectsFromArray:model.data.items];
                   completionHandle(error);
        
    }];
    
    
}


//-(NSNumber *)IDforRow:(NSInteger)ID{
//    
//    return [self ysListModelForRow:row].id;
//    
//}


@end
