//
//  ViewController.m
//  HelloWorld
//
//  Created by Mark Petherbridge on 06/02/2014.
//  Copyright (c) 2014 iOS-Blog. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;


@end

@implementation ViewController

-(IBAction)Enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Mark";
    NSString *message;

    if ([yourName length] == 0) {
        yourName = @"World";
    }
    
    if([yourName isEqualToString: myName]) {
        message = [NSString stringWithFormat:@"Hello %@, We have the same name \n Awesome", yourName];
    } else {
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }

    self.messageLabel.text = message;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
