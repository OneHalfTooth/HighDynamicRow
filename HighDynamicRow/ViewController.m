//
//  ViewController.m
//  HighDynamicRow
//
//  Created by 马扬 on 2016/9/22.
//  Copyright © 2016年 马扬. All rights reserved.
//

#import "ViewController.h"

#import "MMcustomTableViewCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,copy)NSString * contentText;
@property (nonatomic,retain)NSArray * dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:@"MMcustomTableViewCell" bundle:nil] forCellReuseIdentifier:@"MMcustomTableViewCell"];
    self.title =  @"动态取行高";
    self.tableView.estimatedRowHeight = 244.f;
        _dataSource = @[@"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad adasd fwqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe",@"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad adasd fwqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe",@"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad adasd fwqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe",@"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad adasd fwqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe",@"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad adasd fwqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe",@"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad adasd fwqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdad", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe", @"asdqweqweqwe asdadqwe dsd ad qweqwe qasd ad qwe qwe qw asd qwe f eaf asf asdf sf f we sdadadnajkwnejwn nd jknd jnasjkd nqjwn jqwn qwe wd ad and jka ndjknadj najdn iabduiqwb iqb iandi aid nind iand waeqwe"];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    MMcustomTableViewCell * cell = (MMcustomTableViewCell *)[self tableView:self.tableView cellForRowAtIndexPath:indexPath];
    cell.contentLabel.preferredMaxLayoutWidth = self.view.bounds.size.width;
    cell.bottomLabel.preferredMaxLayoutWidth = self.view.bounds.size.width;
    CGFloat height = [cell systemLayoutSizeFittingSize:UILayoutFittingCompressedSize].height;
    NSLog(@"%lf",height);
    return height;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    MMcustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"MMcustomTableViewCell"];
    
    cell.contentLabel.text = self.dataSource[indexPath.row];
    cell.bottomLabel.text = self.dataSource[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}


@end
