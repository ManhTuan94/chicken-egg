//
//  ViewController.h
//  chicken
//
//  Created by TOM on 3/30/13.
//  Copyright (c) 2013 TOM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@interface ViewController : UIViewController <AVAudioPlayerDelegate>
{   NSTimer* _timer;
    float _frequency;
    float _duration;
    int i;
}
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (strong,nonatomic) AVAudioPlayer* audioPlayer;

- (void) snapAtFrequency: (float) frequency
             andDuration: (float) duration;


@end

