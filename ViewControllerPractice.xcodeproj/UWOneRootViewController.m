//
//  UWOneRootViewController.m
//  ViewControllerPractice
//
//  Created by Ali Rizvi on 4/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UWOneRootViewController.h"

#import "UWOneDetailViewController.h"


@implementation UWOneRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
      self.title = @"Default";
      
      self.navigationItem.title = @"Root";
      
      self.tabBarItem.title = @"One";
      self.tabBarItem.image = [UIImage imageNamed:@"38-airplane.png"];
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)tapMeAction:(id)sender {
  UWOneDetailViewController *detailController = [[UWOneDetailViewController alloc] init];
  [self.navigationController pushViewController:detailController animated:YES];
  [detailController release];
}
@end
