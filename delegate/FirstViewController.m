//
//  FirstViewController.m
//  delegate
//
//  Created by Rafal Kampa on 08.04.2016.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

//tak jak z tableView   DELEGATE przy interface
@interface FirstViewController () <SecondViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation FirstViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButtonTapped:(id)sender {
    [self performSegueWithIdentifier:@"go" sender:self];
}


//funkcja z delegaty, ktora zrobilismy, pojawia sie jak na gorze przy interface wskazesz mu z ktorej delegaty ma korzystac, tak samo z tableView te wszystkie funkcje cellforRow numberOfRows itd itp sa dostepne dopiero jak zrobisz <UITableViewDelegate>
- (void)sendText:(NSString *)text{
    self.label.text = text;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"go"]) {
        SecondViewController *vc = [segue destinationViewController];
        
        
        //WAZNE!! musimy mu wskazac ze delegata odwoluje sie do tego vc :SELF  (z tableView tez tak robisz tylko ze to sobie przeciagasz w storyboardzie, ale rownie dobrze moglbys to zrobic z kodu self.tableView.delegate = self
        vc.delegate = self;
    }
}


@end
