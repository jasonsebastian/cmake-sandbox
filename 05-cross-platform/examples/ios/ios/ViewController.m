//
//  ViewController.m
//  ios
//
//  Created by Jason Sebastian on 9/20/19.
//  Copyright © 2019 Jason Sebastian. All rights reserved.
//

#import "ViewController.h"
#import "add.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableString *message = [[NSMutableString alloc] init];
    [message appendString:@"add(1, 2) = "];
    [message appendString:[NSString stringWithFormat:@"%i", add(1, 2)]];
    
    self.textView.text = message;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
