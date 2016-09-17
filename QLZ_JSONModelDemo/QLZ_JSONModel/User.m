//
//  User.m
//  QLZ_Database
//
//  Created by 张庆龙 on 16/3/27.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import "User.h"

@implementation User

+ (NSDictionary *)JSONDictionary {
    return @{@"name" : @"username",
//             @"age" : @"age",
//             @"sex" : @"sex",
//             @"father" : @"father",
//             @"mother" : @"mother"
             };
}

+ (Class)classToProperty:(NSString *)propertyName {
    if ([propertyName isEqualToString:@"cousins"]) {
        return [User class];
    }
//    if ([propertyName isEqualToString:@"father"] || [propertyName isEqualToString:@"mother"]) {
//        return [User class];
//    }
    return nil;
}

@end
