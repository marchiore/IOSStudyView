//
//  StatusTarefaViewController.m
//  IOSStudyView
//
//  Created by Matheus Marchiore on 1/23/14.
//  Copyright (c) 2014 Matheus Marchiore. All rights reserved.
//

#import "StatusTarefaViewController.h"

@interface StatusTarefaViewController ()

@property (weak, nonatomic) IBOutlet UILabel *Label1;
@property (weak, nonatomic) IBOutlet UILabel *Label2;

@end

@implementation StatusTarefaViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.Label1.text = [self.tarefa NomeTarefa];
    self.Label2.text = [self.tarefa DescTarefa];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
