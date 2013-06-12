//
//  TAModalViewController.m
//  testiOS7
//
//  Created by Peter Stajger on 6/11/13.
//  Copyright (c) 2013 Peter Stajger. All rights reserved.
//

#import "TAModalViewController.h"

@interface TAModalViewController ()

@end

@implementation TAModalViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)dismissModalViewController:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
