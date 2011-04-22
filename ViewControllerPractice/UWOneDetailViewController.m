//
//  UWOneDetailViewController.m
//  ViewControllerPractice
//
//  Created by Ali Rizvi on 4/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UWOneDetailViewController.h"


@implementation UWOneDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
      self.title = @"Detail";
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
    // Do any additional setup after loading the view from its nib.
  UIBarButtonItem *barButton = [[UIBarButtonItem alloc] 
                                initWithTitle:@"Action" 
                                style:UIBarButtonItemStyleBordered 
                                target:self 
                                action:@selector(showAction)];
  self.navigationItem.rightBarButtonItem = barButton;
  [barButton release];
}

- (void)showAction
{
  NSLog(@"Action will be displayed");
  UIActionSheet *action = [[UIActionSheet alloc] initWithTitle:@"Take Action" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete" otherButtonTitles:@"Chill Out", @"Relax", nil];
  // TODO: Find a better way for the follow showInView line
  [action showInView:[self.view.subviews objectAtIndex:0]];
  [action release];
  
}

- (void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
  NSLog(@"Action Sheet '%@' Clicked at Index %d", actionSheet.title, buttonIndex);
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
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
  return YES;
}

@end
