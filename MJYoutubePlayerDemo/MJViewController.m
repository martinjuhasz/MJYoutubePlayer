//
//  MJViewController.m
//  MJYoutubePlayerDemo
//
//  Created by Martin Juhasz on 31.05.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MJViewController.h"
#import "MJYoutubePlayer.h"

@interface MJViewController ()

@end

@implementation MJViewController

@synthesize youtubePlayer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)playButtonClicked:(id)sender {
    self.youtubePlayer = [[MJYoutubePlayer alloc] initWithVideoID:@"pkqzFUhGPJg"];
    [self.youtubePlayer play];
}

@end
