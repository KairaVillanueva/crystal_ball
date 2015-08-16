//
//  ViewController.h
//  crystalBall
//
//  Created by Fatima Zenine Villanueva on 8/16/15.
//  Copyright © 2015 apps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textOfVoice;
@property (weak, nonatomic) IBOutlet UIButton *playPauseButton;
@property (strong, nonatomic) AVSpeechSynthesizer *synthesizer;



@end

