//
//  ViewController.m
//  TwitterizerX
//
//  Created by Brandon Gress on 3/16/16.
//  Copyright © 2016 Brandon Gress. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *labelOutlet;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)twitterize:(id)sender {
    NSString *textViewString = self.textView.text;
    NSMutableString *stringWithoutVowel = [NSMutableString stringWithString:textViewString];

    NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
    for (int i = 0; i < [vowels count]; i++) {
        NSString *vowel = vowels[i];
        [stringWithoutVowel replaceOccurrencesOfString:vowel
                                   withString:@""
                                      options:NSCaseInsensitiveSearch
                                        range:NSMakeRange(0, stringWithoutVowel.length)];
    }

    self.textView.text = stringWithoutVowel;
}


@end
