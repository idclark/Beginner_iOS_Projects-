//
//  DetailViewController.h
//  Homepwner
//
//  Created by Ian D Clark on 12/23/12.
//  Copyright (c) 2012 Ian D Clark. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNRItem;
@interface DetailViewController : UIViewController
<UINavigationControllerDelegate, UIImagePickerControllerDelegate,
UITextFieldDelegate, UIPopoverControllerDelegate>
{
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UITextField *valueField;
    __weak IBOutlet UITextField *serialNumberField;
    
    __weak IBOutlet UIImageView *imageView;
    __weak IBOutlet UILabel *dateLabel;
    
    UIPopoverController *imagePickerPopover;
    
}
- (IBAction)backgroundTapped:(id)sender;
@property (nonatomic, strong) BNRItem *item;

- (IBAction)takePicture:(id)sender;

@end
