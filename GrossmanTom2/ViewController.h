//
//  ViewController.h
//  GrossmanTom2
//
//  Created by Tom Grossman on 7/2/16.
//  Copyright © 2016 Tom Grossman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)previousSaying:(id)sender;
- (IBAction)randomSaying:(id)sender;
- (IBAction)nextSaying:(id)sender;
- (IBAction)submitNewSaying:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *sayingDisplaySetField;

extern int sayingCounter;
extern int arrayCounter;
extern NSString *sayingArray[];
extern int arrayAddIndex;
extern BOOL arrayEmpty;

@end

