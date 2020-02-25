//
//  ViewController.m
//  CheckLists
//
//  Created by Elderly on 2020/2/6.
//  Copyright © 2020 Elderly. All rights reserved.
//

#import "ViewController.h"

@interface ViewController() {
    NSString *_row0text;
    NSString *_row1text;
    NSString *_row2text;
    NSString *_row3text;
    NSString *_row4text;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _row0text = @"观看嫦娥奔月视频";
    _row1text = @"了解Sony a7价格";
    _row2text = @"复习苍老师视频";
    _row3text = @"去电影院看电影";
    _row4text = @"看西甲巴萨新败的比赛回放";
}

- (NSInteger) tableView:(UITableView *) tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    UILabel *label = (UILabel *)[cell viewWithTag:1000];
    if (indexPath.row % 5 == 0) {
        label.text = _row0text;
    } else if (indexPath.row % 5 == 1) {
        label.text = _row1text;
    } else if (indexPath.row % 5 == 2) {
        label.text = _row2text;
    } else if (indexPath.row % 5 == 3) {
        label.text = _row3text;
    } else if (indexPath.row % 5 == 4) {
        label.text = _row4text;
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
