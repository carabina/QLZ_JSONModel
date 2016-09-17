//
//  ViewController.h
//  QLZ_JSONModel
//
//  Created by 张庆龙 on 16/9/17.
//  Copyright © 2016年 张庆龙. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    UITableView *databaseTableView;
    NSMutableArray *itemsArray;
}


@end

