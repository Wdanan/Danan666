//
//  YSNetManager.m
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "YSNetManager.h"

@implementation YSNetManager
+(id)getYSListType:(YSListType)type page_index:(NSInteger)page_index channel_id:(NSInteger)channel_id  completionHandle:(void(^)(YSModel *model, NSError *error))completionHandle{
    NSString *path = nil;
    
    switch (type) {
//        case YSListTypeTuiJie: {
//            path = [NSString stringWithFormat:@"http://dxy.com/app/i/columns/article/list?ac=1d6c96d5-9a53-4fe1-9537-85a33de916f1&add_brief=1&items_per_page=10&mc=dba8c7dc895b07672eba0b3a7d657d025093dbce&page_index=%ld&vc=4.0.8", page_index];
//            break;
//        }

        case YSListTypeZhongLiu: {
            path = [NSString stringWithFormat:@"http://dxy.com/app/i/columns/article/list?ac=1d6c96d5-9a53-4fe1-9537-85a33de916f1&channel_id=8&items_per_page=10&mc=dba8c7dc895b07672eba0b3a7d657d025093dbce&order=publishTime&page_index=%ld&vc=4.0.8", page_index];
            break;
        }
        case YSListTypeManBing: {
            path = [NSString stringWithFormat:@"http://dxy.com/app/i/columns/article/list?ac=1d6c96d5-9a53-4fe1-9537-85a33de916f1&channel_id=7&items_per_page=10&mc=dba8c7dc895b07672eba0b3a7d657d025093dbce&order=publishTime&page_index=%ld&vc=4.0.8", page_index];
            break;
        }
        case YSListTypeYinYang: {
            path = [NSString stringWithFormat:@"http://dxy.com/app/i/columns/article/list?ac=1d6c96d5-9a53-4fe1-9537-85a33de916f1&channel_id=6&items_per_page=10&mc=dba8c7dc895b07672eba0b3a7d657d025093dbce&order=publishTime&page_index=%ld&vc=4.0.8", page_index];
            break;
        }
        case YSListTypeMuYing: {
            path = [NSString stringWithFormat:@"http://dxy.com/app/i/columns/article/list?ac=1d6c96d5-9a53-4fe1-9537-85a33de916f1&channel_id=5&items_per_page=10&mc=dba8c7dc895b07672eba0b3a7d657d025093dbce&order=publishTime&page_index=%ld&vc=4.0.8", page_index];
            break;
        }
        default: {
            break;
        }
    }
    //只要请求下来的数据公用一个解析类，就可以合写
    return [self GET:path parameters:nil completionHandler:^(id responseObj, NSError *error) {
        completionHandle([YSModel objectWithKeyValues:responseObj],error);
    }];
    
    
}
@end
