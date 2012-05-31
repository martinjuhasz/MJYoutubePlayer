//
//  MJYoutubePlayer.m
//  MJYoutubePlayer
//
//  Created by Martin Juhasz on 31.05.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MJYoutubePlayer.h"

@implementation MJYoutubePlayer

@synthesize webView;
@synthesize videoID;

- (id)initWithVideoID:(NSString*)_videoID
{
    self = [self init];
    if(self) {
        self.webView = [[UIWebView alloc] initWithFrame:CGRectZero];
        self.webView.delegate = self;
        self.videoID = _videoID;
    }
    return self;
}

- (void)play
{
    NSString *completeURL = [NSString stringWithFormat:@"http://www.youtube.com/v/%@",self.videoID];
    NSString *htmlString = [NSString stringWithFormat:@"<html><head> \
    <meta name = \"viewport\" content = \"initial-scale = 1.0, user-scalable = no, width = 100\"/></head> \
    <body style=\"background:#F00;margin-top:0px;margin-left:0px\"> \
    <div><object width=\"100\" height=\"300\"> \
    <param name=\"movie\" value=\"%@&autoplay=1\"></param> \
    <param name=\"wmode\" value=\"transparent\"></param> \
    <embed src=\"%@&autoplay=1\" \
    type=\"application/x-shockwave-flash\" wmode=\"transparent\" width=\"100\" height=\"300\"></embed> \
    </object></div></body></html>", completeURL, completeURL];
    
    [self.webView loadHTMLString:htmlString baseURL:nil];
}

- (void)webViewDidFinishLoad:(UIWebView *)_webView
{
	UIButton *b = [self findButtonInView:_webView];
	[b sendActionsForControlEvents:UIControlEventTouchUpInside];
}

- (UIButton *)findButtonInView:(UIView *)view {
	UIButton *button = nil;
	
	if ([view isMemberOfClass:[UIButton class]]) {
		return (UIButton *)view;
	}
	
	if (view.subviews && [view.subviews count] > 0) {
		for (UIView *subview in view.subviews) {
			button = [self findButtonInView:subview];
			if (button) return button;
		}
	}
	
	return button;
}

@end
