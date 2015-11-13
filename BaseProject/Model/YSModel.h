//
//  YSModel.h
//  BaseProject
//
//  Created by tarena on 15/11/3.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "BaseModel.h"

@class YSDataModel,YSDataItemsModel;
@interface YSModel : BaseModel

@property (nonatomic, strong) YSDataModel *data;



@end
@interface YSDataModel : NSObject

@property (nonatomic, assign) NSInteger total_pages;

@property (nonatomic, strong) NSArray<YSDataItemsModel *> *items;

@property (nonatomic, assign) NSInteger total_items;

@property (nonatomic, assign) NSInteger start_index;

@property (nonatomic, assign) NSInteger page_index;

@property (nonatomic, assign) NSInteger current_item_count;

@property (nonatomic, assign) NSInteger items_per_page;

@end

@interface YSDataItemsModel : NSObject

@property (nonatomic, copy) NSString *author;

@property (nonatomic, copy) NSString *author_avatar;

@property (nonatomic, assign) NSInteger author_id;

@property (nonatomic, assign) NSInteger special_id;
@property (nonatomic, copy) NSString *special_name;

@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *author_remarks;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *publish_time;

@property (nonatomic, copy) NSString *cover;

@property (nonatomic, copy) NSString *author_url;

@property (nonatomic, copy) NSString *cover_small;


@end

