//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "JSQMessagesCollectionViewCellOutgoing.h"
@interface JSQMessagesCollectionViewCellOutgoing(){
}
@property (unsafe_unretained, nonatomic) IBOutlet UIActivityIndicatorView *messageloadingIndicator;
@end

@implementation JSQMessagesCollectionViewCellOutgoing

#pragma mark - Overrides

- (void)awakeFromNib
{
    [super awakeFromNib];
    self.messageBubbleTopLabel.textAlignment = NSTextAlignmentRight;
    self.cellBottomLabel.textAlignment = NSTextAlignmentRight;
}
-(void)showLoading{
    self.messageloadingIndicator.hidden = NO;
    [self.messageloadingIndicator startAnimating];
}
-(void)hideLoading{
    [self.messageloadingIndicator stopAnimating];
    self.messageloadingIndicator.hidden = YES;
}
@end
