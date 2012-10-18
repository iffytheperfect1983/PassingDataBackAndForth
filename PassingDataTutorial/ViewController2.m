//
//  ViewController2.m
//  PassingDataTutorial
//
//  Created by iffytheperfect on 9/24/12.
//  Copyright (c) 2012 iffytheperfect. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

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
	// Do any additional setup after loading the view.
    
    self.displayLabel2.text = self.stringFromTextField1;
    self.textField2.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)appendAndPassToVC1:(id)sender {
    
    [self.delegate passItemBack:self didFinishWithItem:[self.displayLabel2.text stringByAppendingString:self.textField2.text]];
    
 //   [self.delegate passItemBack:self didFinishWithItem:self.textField2.text];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}
@end
