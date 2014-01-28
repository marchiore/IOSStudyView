//
//  ViewController.h
//  IOSStudyView
//
//  Created by Matheus Marchiore on 1/22/14.
//  Copyright (c) 2014 Matheus Marchiore. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    NSMutableArray *tarefas;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
@end
