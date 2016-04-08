//
//  SecondViewController.m
//  delegate
//
//  Created by Rafal Kampa on 08.04.2016.
//  Copyright © 2016 Rafal Kampa. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)goBackButtonTapped:(UIButton *)sender {
    //powrot do poprzedniego vc
    // push to do przodu pop to w tyl
    [self.navigationController popViewControllerAnimated:YES];
    
    //odwolanie do delegaty czyt. ma odpalic w tym momencie funkcje z delegaty w ktorej zmienna text bedzie string z textfielda wprowadzony
    [self.delegate sendText:self.textField.text];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
