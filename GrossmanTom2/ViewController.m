//
//  ViewController.m
//  GrossmanTom2
//
//  Created by Tom Grossman on 7/2/16.
//  Copyright © 2016 Tom Grossman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.sayingDisplaySetField becomeFirstResponder];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *saying;
    saying = _sayingDisplaySetField.text;
    if(arrayCounter <= 10) {
        sayingArray[arrayCounter] = saying;
        arrayCounter++;
        _sayingDisplaySetField.text = @"";
    } else {
        _sayingDisplaySetField.text = @"The array is full. No more sayings can be added.";
    }
    arrayEmpty = NO;
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

int sayingCounter = -1;
int arrayCounter = 0;
NSString *sayingArray[10];
BOOL arrayEmpty = YES;

- (IBAction)previousSaying:(id)sender {
    if(arrayEmpty) {
        _sayingDisplaySetField.text = @"No sayings have been entered, yet.";
    } else if(sayingCounter > 0) {
        sayingCounter--;
        _sayingDisplaySetField.text = sayingArray[sayingCounter];
    } else if(sayingCounter == 0) {
        sayingCounter = arrayCounter - 1;
        _sayingDisplaySetField.text = sayingArray[sayingCounter];
    }
}

- (IBAction)randomSaying:(id)sender {
    if(arrayEmpty) {
        _sayingDisplaySetField.text = @"No sayings have been entered, yet.";
    } else {
        int size = arrayCounter;
        sayingCounter = 0 + arc4random_uniform(size - 0 + 1);
        _sayingDisplaySetField.text = sayingArray[sayingCounter];
    }
}

- (IBAction)nextSaying:(id)sender {
    if(arrayEmpty) {
        _sayingDisplaySetField.text = @"No sayings have been entered, yet.";
    } else if(sayingCounter < arrayCounter) {
        sayingCounter++;
        _sayingDisplaySetField.text = sayingArray[sayingCounter];
    } else if(sayingCounter == arrayCounter) {
        sayingCounter = 0;
        _sayingDisplaySetField.text = sayingArray[sayingCounter];
    }
}

- (IBAction)submitNewSaying:(id)sender {
    NSString *saying;
    saying = _sayingDisplaySetField.text;
    if(arrayCounter <= 10) {
        sayingArray[arrayCounter] = saying;
        arrayCounter++;
        _sayingDisplaySetField.text = @"";
        arrayEmpty = NO;
    } else {
        _sayingDisplaySetField.text = @"The array is full. No more sayings can be added.";
    }
}
@end
