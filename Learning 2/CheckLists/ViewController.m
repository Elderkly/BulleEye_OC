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
    
    BOOL _row0checked;
    BOOL _row1checked;
    BOOL _row2checked;
    BOOL _row3checked;
    BOOL _row4checked;
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
    return 5;
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
    [self configureCheckmarkForCell:cell atIndexPath:indexPath];
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    switch(indexPath.row) {
        case 0:
        _row0checked = !_row0checked;
        break;
        case 1:
        _row1checked = !_row1checked;
        break;
        case 2:
        _row2checked = !_row2checked;
        break;
        case 3:
        _row3checked = !_row3checked;
        break;
        case 4:
        _row4checked = !_row4checked;
        break;
    }
    
    [self configureCheckmarkForCell:cell atIndexPath:indexPath];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (void) configureCheckmarkForCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath{
    BOOL isChecked = NO;
    switch(indexPath.row) {
        case 0:
        isChecked = _row0checked;
        break;
        case 1:
        isChecked = _row1checked;
        break;
        case 2:
        isChecked = _row2checked;
        break;
        case 3:
        isChecked = _row3checked;
        break;
        case 4:
        isChecked = _row4checked;
        break;
    }
    cell.accessoryType = isChecked ? UITableViewCellAccessoryNone : UITableViewCellAccessoryCheckmark;
}
@end
