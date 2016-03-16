//
//  ViewController.m
//  TwitterizerX
//
//  Created by Brandon Gress on 3/16/16.
//  Copyright © 2016 Brandon Gress. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)twitterize:(id)sender {
    NSString *textFieldString = self.textField.text;
}



@end
