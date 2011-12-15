//
//  PhotoConsentViewController.m
//  ForceMultiplier
//
//  Created by Sofian on 14/12/11.
//  Copyright (c) 2011 Rochester Institute of Technology. All rights reserved.
//

#import "PhotoConsentViewController.h"
#import "TabbedViewController.h"

@implementation PhotoConsentViewController

@synthesize agreeButton, disagreeButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    isAgreed = YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

- (void) dealloc {
    [agreeButton release];
    [disagreeButton release];
    [super dealloc];
}

- (void) setAgree {
    isAgreed = YES;
    [self.agreeButton setImage:[UIImage imageNamed:@"OptIn_tSelected.png"] forState:UIControlStateNormal];
    [self.disagreeButton setImage:[UIImage imageNamed:@"OptIn_NotSelected.png"] forState:UIControlStateNormal];
}

- (void) setDisAgree {
    isAgreed = NO;
    [self.agreeButton setImage:[UIImage imageNamed:@"OptIn_NotSelected.png"] forState:UIControlStateNormal];
    [self.disagreeButton setImage:[UIImage imageNamed:@"OptIn_Selected.png"] forState:UIControlStateNormal];
}

- (IBAction) agreeButtonClicked :(id)sender {
    UIButton *button = (UIButton*)sender;
    switch (button.tag) {
        case 1:
            [self setAgree];
            break;
        case 2:
            [self setDisAgree];
            break;
        default:
            break;
    }
}


- (IBAction) nextClicked :(id)sender {
    
    if (isAgreed) {
        // Open camera
    }
    else {
        // show tahnk you view
        TabbedViewController *tabbedVC = [[self.navigationController viewControllers]objectAtIndex:1];
        [[tabbedVC dc_abbrVC]clearFields];
        
        ThankYouPurchaseViewController *thankYouVC = [[ThankYouPurchaseViewController alloc] initWithNibName:@"ThankYouPurchaseViewController" bundle:nil];
        
        ForceMultiplierAppDelegate *appDelegate = (ForceMultiplierAppDelegate*)[[UIApplication sharedApplication]delegate];
        [[appDelegate rootVC] hideErrorMessage];
        
        [[[appDelegate rootVC] navController] pushViewController:thankYouVC animated:YES];

    }
    
}

@end
