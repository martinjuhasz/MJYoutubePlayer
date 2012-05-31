//
//  MJYoutubePlayer.h
//  MJYoutubePlayer
//
//  Created by Martin Juhasz on 31.05.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MJYoutubePlayer : NSObject<UIWebViewDelegate>

@property (strong, nonatomic) UIWebView *webView;
@property (strong, nonatomic) NSString *videoID;

- (id)initWithVideoID:(NSString*)videoID;
- (void)play;

@end
