//
//  ViewController.m
//  CheckLists
//
//  Created by Elderly on 2020/2/6.
//  Copyright © 2020 Elderly. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    if (indexPath.row % 5 == 0) {
        label.text = @"观看嫦娥奔月视频";
    } else if (indexPath.row % 5 == 1) {
        label.text = @"了解Sony a7价格";
    } else if (indexPath.row % 5 == 2) {
        label.text = @"复习苍老师视频";
    } else if (indexPath.row % 5 == 3) {
        label.text = @"去电影院看电影";
    } else if (indexPath.row % 5 == 4) {
        label.text = @"看西甲巴萨新败的比赛回放";
    }
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell.accessoryType == UITableViewCellAccessoryNone) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
@end
