//
//  ViewController.m
//  TwitterizerX
//
//  Created by Brandon Gress on 3/16/16.
//  Copyright © 2016 Brandon Gress. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextViewDelegate>
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
    [self textViewDidChange:self.textView];
}

-(void)textViewDidChange:(UITextView *)textView {
    long counter = textView.text.length;
    self.labelOutlet.text = [NSString stringWithFormat:@"%li", counter];
}

-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if (text.length == 0)
    {
        if (textView.text.length != 0)
        {
            return YES;
        }
    }
    else if (textView.text.length > 139)
    {
        return NO;
    }
    return YES;
}
@end
