//
//  User.h
//  QLZ_Database
//
//  Created by 张庆龙 on 16/3/27.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "QLZ_JSONModel.h"

@interface User : QLZ_JSONModel

@property (nonatomic, strong) NSString *username;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) int sex;
@property (nonatomic, strong) User *father;
@property (nonatomic, strong) User *mother;
@property (nonatomic, strong) NSArray *cousins;

@end
