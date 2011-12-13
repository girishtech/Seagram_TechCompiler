//
//  ThankYouPurchaseViewController.m
//  ForceMultiplier
//
//  Created by Garrett Shearer on 6/30/11.
//  Copyright 2011 Rochester Institute of Technology. All rights reserved.
//

#import "ThankYouPurchaseViewController.h"


@implementation ThankYouPurchaseViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
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
    ForceMultiplierAppDelegate *appDelegate = (ForceMultiplierAppDelegate*)[[UIApplication sharedApplication]delegate];
    [[appDelegate rootVC] hideErrorMessage];
    // Do any additional setup after loading the view from its nib.
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

-(IBAction)nextView
{
    // shahab open
    
    [self.navigationController popToRootViewControllerAnimated:YES];

    // shahab close
    
    
    // shahab open commented
    
//    TabbedViewController *tabbedVC = [[self.navigationController viewControllers]objectAtIndex:1];
//    /*[[tabbedVC dc_abbrVC]clearFields];
//    [[tabbedVC dc_abbrVC]savePerson];
//    [[tabbedVC dc_fullVC]clearFields];
//    [[tabbedVC dc_fullVC]savePerson];*/
//    [[tabbedVC dc_abbrVC]clearFields];
//    [[tabbedVC dc_abbrVC]savePerson];
//    
//    //[[tabbedVC dc_fullVC]cancelOrder];
//    [[tabbedVC dc_fullVC]clearFields];
//    [[tabbedVC dc_fullVC]savePerson];
//    [self.navigationController popToRootViewControllerAnimated:YES];
//    
    // shahab close commented
}

@end
