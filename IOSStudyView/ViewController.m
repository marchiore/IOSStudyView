//
//  ViewController.m
//  IOSStudyView
//
//  Created by Matheus Marchiore on 1/22/14.
//  Copyright (c) 2014 Matheus Marchiore. All rights reserved.
//

#import "ViewController.h"
#import "Tarefa.h"
#import "StatusTarefaViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize tableView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tarefas = [[NSMutableArray alloc] init];
    
    Tarefa *tarefa = [[Tarefa alloc] initWithNome:@"Tarefa 1" descricao:@"Descric 1"];
    
    Tarefa *tarefa1 = [[Tarefa alloc] initWithNome:@"Tarefa 2" descricao:@"Descric 2"];
    
    [tarefas addObject:tarefa];
    [tarefas addObject:tarefa1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [tarefas count];
}

- (UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID = @"cellTarefa";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellID];
    
    if ( cell == nil )
    {
        // Com StyleDefault, aparece só o título, sem a descrição
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        
        // Com StyleSubtitle, são mostrados título e descrição
        //cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    Tarefa *thing = [tarefas objectAtIndex:[indexPath row]];
    cell.textLabel.text = [thing NomeTarefa];
    cell.detailTextLabel.text = [thing DescTarefa];
    
    // Adiciona imagem à célula
    //cell.imageView.image = [UIImage imageNamed:@"imagem.png"];
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //Chama um segue
    Tarefa *senderTarefa = [tarefas objectAtIndex:indexPath.row];
    
    [self performSegueWithIdentifier:@"Detalhes" sender:senderTarefa];


}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"Detalhes"]) {
        StatusTarefaViewController *status = (StatusTarefaViewController *)segue.destinationViewController;
        status.tarefa = sender;
    }
}


@end
