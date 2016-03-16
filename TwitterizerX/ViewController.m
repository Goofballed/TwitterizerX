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
    NSUInteger length = textFieldString.length;
    for (int i = 0; i < length; i++) {
        NSLog(@"textFieldString[%i] == %c" , i, [textFieldString characterAtIndex: i]);

    }
}



@end
