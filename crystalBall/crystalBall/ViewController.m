//
//  ViewController.m
//  crystalBall
//
//  Created by Fatima Zenine Villanueva on 8/16/15.
//  Copyright © 2015 apps. All rights reserved.
//

#import "ViewController.h"
#import "emojis.h"
#import "NSString+Emojize.h"
#import "NSString+Emojize.m"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *emojiLabel;

@end

@implementation ViewController


- (void)showRandomEmoji {
    
    NSArray *emojies = @[
                         @":angel:",
                         @":anger:",
                         @":angry:",
                         @":anguished:",
                         @":baby:",
                         @":beer:",
                         @":banana:",
                         @":cat:",
                         @":cool:",
                         @":cookie:",
                         @":cry:",
                         @":dizzy:",
                         @":cow:",
                         @":date:",
                         @":grin:",
                         @":ghost:",
                         @":guitar:",
                         @":hear_no_evil:",
                         @":heart_eyes:",
                         @":laughing:",
                         @":love_letter:",
                         @":mens:",
                         @":massage:",
                         @":princess:",
                         @":relaxed:",
                         @":rainbow:",
                         @":secret:",
                         @":sleeping:",
                         @":sparkle:",
                         @":yum:",
                         @":wink:",
                         @":whale:"
                         ];
    
    NSInteger randomIndex = arc4random_uniform(emojies.count);
    NSString *randomEmoji = emojies[randomIndex];
    NSString *str = [NSString stringWithFormat:@"Your fortune is %@", randomEmoji];
    self.emojiLabel.text = [str emojizedString];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.synthesizer = [[AVSpeechSynthesizer alloc]init];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)playPauseButtonPressed:(UIButton *)sender {
    [self.textOfVoice resignFirstResponder];
    AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:self.textOfVoice.text];
    //[self.synthesizer speakUtterance:utterance];
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate*( 10.0);
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-au"];
    [self.synthesizer speakUtterance:utterance];
    [self showRandomEmoji];
    
    
}

@end
