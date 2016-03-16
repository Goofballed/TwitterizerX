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
    NSMutableString *newString = [NSMutableString stringWithString:textFieldString];

    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    for (int i = 0; i < [vowels count]; i++) {
        NSString *vowel = vowels[i];
        [newString replaceOccurrencesOfString:vowel
                                   withString:@""
                                      options:NSCaseInsensitiveSearch
                                        range:NSMakeRange(0, newString.length)];
    }



}



@end
