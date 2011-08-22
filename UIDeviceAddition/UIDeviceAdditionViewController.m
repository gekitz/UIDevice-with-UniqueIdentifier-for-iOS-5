//
//  UIDeviceAdditionViewController.m
//  UIDeviceAddition
//
//  Created by Georg Kitz on 20.08.11.
//  Copyright 2011 Aurora Apps. All rights reserved.
//

#import "UIDeviceAdditionViewController.h"
#import "UIDevice+IdentifierAddition.h"

@implementation UIDeviceAdditionViewController

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


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad{
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 300, 100)];
    label.numberOfLines = 0;
    label.textAlignment = UITextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"Unique Device Identifier:\n%@",
                  [[UIDevice currentDevice] uniqueDeviceIdentifier]];
    
    [self.view addSubview:label];
    [label release];
                  
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 210, 300, 100)];
    label.numberOfLines = 0;
    label.textAlignment = UITextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"Unique GLOBAL Device Identifier:\n%@",
                  [[UIDevice currentDevice] uniqueGlobalDeviceIdentifier]];
                  
    [self.view addSubview:label];
    [label release];
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

@end
