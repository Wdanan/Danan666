//
//  YSNetManager.h
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "YSModel.h"

typedef NS_ENUM(NSUInteger, YSListType) {
    //YSListTypeTuiJie,
    YSListTypeZhongLiu,//肿瘤
    YSListTypeManBing,
    YSListTypeYinYang,
    YSListTypeMuYing,//母婴

};

@interface YSNetManager : BaseNetManager
//通过type来区分 请求的地址
+(id)getYSListType:(YSListType)type page_index:(NSInteger)page_index channel_id:(NSInteger)channel_id completionHandle:(void(^)(YSModel *model, NSError *error))completionHandle;


@end
