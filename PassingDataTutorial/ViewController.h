//
//  ViewController.h
//  PassingDataTutorial
//
//  Created by iffytheperfect on 9/24/12.
//  Copyright (c) 2012 iffytheperfect. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController2.h"

@interface ViewController : UIViewController<UITextFieldDelegate, ViewController2Delegate>

@property (weak, nonatomic) IBOutlet UITextField *firstTextField;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel1;
@property (strong, nonatomic) NSString *stringFromVC2;

- (IBAction)passTextToVC2Button:(id)sender;

@end
