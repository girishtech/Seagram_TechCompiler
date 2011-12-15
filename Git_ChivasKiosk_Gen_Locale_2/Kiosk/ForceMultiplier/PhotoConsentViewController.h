//
//  PhotoConsentViewController.h
//  ForceMultiplier
//
//  Created by Sofian on 14/12/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoConsentViewController : UIViewController {
    UIButton *agreeButton;
    UIButton *disagreeButton;
    BOOL isAgreed;
}

@property (nonatomic, retain) IBOutlet UIButton *agreeButton;
@property (nonatomic, retain) IBOutlet UIButton *disagreeButton;

- (IBAction) agreeButtonClicked :(id)sender;
- (IBAction) nextClicked :(id)sender;

@end
