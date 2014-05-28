//
//  PhotoView.m
//  PhotoScrollerTest
//
//  Created by Scott Richards on 5/27/14.
//  Copyright (c) 2014 Scott Richards. All rights reserved.
//

#import "PhotoView.h"
#import "ImageScrollView.h"

@interface PhotoView ()
@property (strong, nonatomic) ImageScrollView *scrollView;

@end

@implementation PhotoView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
//        ImageScrollView *scrollView = [[ImageScrollView alloc] init];
        self.scrollView = [[ImageScrollView alloc] init];
//        self.scrollView.index = 0;
//        UIView *contentView = [[UIView alloc] init];
        CGRect scrollBounds = CGRectMake(0, 0, frame.size.width, frame.size.height);
        [self.scrollView setFrame:frame];
        [self.scrollView setBounds:scrollBounds];
        [self addSubview:self.scrollView];
    }
    return self;
}

-(void)setImage:(UIImage *)image
{
    [self.scrollView setImage:image];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
