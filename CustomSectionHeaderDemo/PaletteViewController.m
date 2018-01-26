//
//  PaletteViewController.m
//  CustomSectionHeaderDemo
//
//  Created by Perfect on 2018/1/25.
//  Copyright © 2018年 Alex. All rights reserved.
//
#import "Color.h"
#import "SubColor.h"
#import "ColorTableCell.h"
#import "ColorSectionHeaderView.h"
#import "PaletteViewController.h"

@interface PaletteViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray <Color *> *colors;
@end

@implementation PaletteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.colors = [Color allColors];
    [self.tableView registerNib:[UINib nibWithNibName:@"ColorSectionHeaderView" bundle:nil] forHeaderFooterViewReuseIdentifier:@"sectionHeader"];
}

#pragma mark - Action
- (void)expandOrHide:(UIButton *)sender {
    Color *selectedColor = self.colors[sender.tag];
    selectedColor.expanded = !selectedColor.expanded;
    NSMutableIndexSet *indexSet = [[NSMutableIndexSet alloc] init];
    [indexSet addIndex:sender.tag];
    [self.tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationFade];
}

#pragma mark - UITableViewDelegate, UITableViewDataSource
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    ColorSectionHeaderView *sectionHeaderView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"sectionHeader"];
    
    Color *color = self.colors[section];
    sectionHeaderView.titleLabel.text = color.name;
    sectionHeaderView.expandButton.tag = section;
    [sectionHeaderView.expandButton addTarget:self action:@selector(expandOrHide:) forControlEvents:UIControlEventTouchDown];
    return sectionHeaderView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}

/**
 // Default section header: Only need title
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    Color *color = self.colors[section];
    return color.name;
}
*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.colors.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    Color *color = self.colors[section];
    if(!color.expanded) {
        return 0;
    }
    return color.subColors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Color *color = self.colors[indexPath.section];
    SubColor *subColor = color.subColors[indexPath.row];
    
    ColorTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ColorTableCell" forIndexPath:indexPath];
    cell.nameLabel.text = subColor.name;
    cell.displayView.backgroundColor = [UIColor colorWithRed:subColor.red green:subColor.green blue:subColor.blue alpha:1];
    return cell;
}

@end
