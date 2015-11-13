//
//  DetailNetManager.h
//  BaseProject
//
//  Created by tarena on 15/11/4.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseNetManager.h"
#import "DetailModel.h"

@interface DetailNetManager : BaseNetManager

//通过type来区分 请求的地址
+(id)getID:(NSInteger)ID completionHandle:(void(^)(DetailModel *model, NSError *error))completionHandle;



@end
