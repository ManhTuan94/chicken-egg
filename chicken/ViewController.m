//
//  ViewController.m
//  chicken
//
//  Created by TOM on 3/30/13.
//  Copyright (c) 2013 TOM. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self snapAtFrequency:3 andDuration:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (void) snapAtFrequency: (float) frequency
             andDuration: (float) duration
{
    _frequency = frequency;
    _duration = duration;
    if (!_timer)     {
        _timer = [NSTimer scheduledTimerWithTimeInterval: 1/_frequency
                                                  target: self
                                                selector: @selector(start)
                                                userInfo: nil
                                                 repeats: YES];
        i=0;
        
    } else {
        [_timer invalidate];
        _timer = nil;
    }
}

- ( void) start
{
    
    i++;
    NSString* string = [NSString stringWithFormat:@"%i",i];
    self.imageView.image = [UIImage imageNamed:string];
    
    if (i==18)
    {
        NSString* _sound = [[NSBundle mainBundle] pathForResource:@"chicken" ofType:@"mp3"];
        NSData* _date = [NSData dataWithContentsOfFile:_sound];
        self.audioPlayer = [[AVAudioPlayer alloc]initWithData:_date error:nil];
        [self.audioPlayer play];
    }

    
}


@end
