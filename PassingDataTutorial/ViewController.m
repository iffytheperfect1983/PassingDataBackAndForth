//
//  ViewController.m
//  PassingDataTutorial
//
//  Created by iffytheperfect on 9/24/12.
//  Copyright (c) 2012 iffytheperfect. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.firstTextField.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)passTextToVC2Button:(id)sender {
    
    ViewController2 *VC2 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    
    VC2.stringFromTextField1 = self.firstTextField.text;
    
    VC2.delegate = self;
    
    [self presentViewController:VC2 animated:YES completion:nil];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

-(void)passItemBack:(ViewController2 *)controller didFinishWithItem:(NSString *)item
{
    self.displayLabel1.text = item;
}

@end
