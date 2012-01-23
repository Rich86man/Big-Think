//
//  ViewController.m
//  Big Think
//
//  Created by Richard Kirk on 1/15/12.
//  Copyright (c) 2012 Home. All rights reserved.
//

#import "ViewController.h"
#import "RKMatrixViewCell.h"
#import "RKMediumCellView.h"
#import "RKLargeCellView.h"


@implementation ViewController
@synthesize matrixView = _matrixView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    _matrixView.datasource = self;
    _matrixView.delegate = self;
   
    [_matrixView demoo];
}

- (void)viewDidUnload
{
    [self setMatrixView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


#pragma mark - RKMatrixViewDatasource Functions

-(UIView *) matrixView:(RKMatrixView *)matrixView viewForLocation:(RK2DLocation)location withFrame:(CGRect)frame
{
        RKLargeCellView *cell = [[RKLargeCellView alloc]initWithFrame:frame];
             return cell;
}


-(RKMatrixViewCell *)matrixView:(RKMatrixView *)matrixView cellForLocation:(RK2DLocation)location
{
    
    RKMatrixViewCell *cell = [_matrixView dequeResuableCell];    
    if(!cell)
    {
        cell = [[RKMatrixViewCell alloc]init];
       
    }
    RKLargeCellView *view = [[RKLargeCellView alloc]initWithFrame:CGRectZero];
    //UIView *view = [[UIView alloc]initWithFrame:CGRectZero];
    //UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 50, 100, 100)];
    //label.text = [NSString stringWithFormat:@"{%i,%i}",location.row, location.column];
    //[view addSubview:label];
    //label.backgroundColor = [UIColor clearColor];
    //view.backgroundColor = [UIColor randomColor];

   view.header.text = [NSString stringWithFormat:@"{%i,%i}",location.row, location.column];
    cell.contentView = view;

    return cell;
}



-(int)numberOfCellsInMatrix:(RKMatrixView *)matrix
{
    return 25;  // **** need to get to this ****
                // The amount of cells needs to be a perfect square
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
        return YES;
}

- (IBAction)sliderChanged:(UISlider *)sender 
{
   
   
}

- (IBAction)layoutSegmentChanged:(UISegmentedControl *)sender 
{
    [self.matrixView setLayout:sender.selectedSegmentIndex];
}

@end
