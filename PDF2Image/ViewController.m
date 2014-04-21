//
//  ViewController.m
//  PDF2Image
//
//  Created by David Tseng on 3/18/13.
//  Copyright (c) 2013 David Tseng. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+PDF.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *image = [UIImage imageWithPDFNamed:@"InfoTicketing.pdf" atWidth:200./[UIScreen mainScreen].scale];

    NSString *imageName = @"myImage.png";   
    NSArray * paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,  NSUserDomainMask, YES);
    NSString * documentsDirectoryPath = [paths objectAtIndex:0];
    
    NSString *dataPath = [documentsDirectoryPath  stringByAppendingPathComponent:imageName];
    NSData* settingsData = UIImagePNGRepresentation(image);
    [settingsData writeToFile:dataPath atomically:YES];
    NSLog(@"Saving image to %@",dataPath);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
