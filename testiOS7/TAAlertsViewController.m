//
//  TAAlertsViewController.m
//  testiOS7
//
//  Created by Peter Stajger on 6/11/13.
//  Copyright (c) 2013 Peter Stajger. All rights reserved.
//

#import "TAAlertsViewController.h"

@interface TAAlertsViewController () <UIAlertViewDelegate, UIActionSheetDelegate>

@end

@implementation TAAlertsViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {

            [self alertSimpleAction];
        }
        else if (indexPath.row == 1) {
            [self alertOKCancelAction];
        }
        else if (indexPath.row == 2) {
            [self alertSecureTextAction];
        }
        else {
            [self alertOtherAction];
        }
    }
    else {
        if (indexPath.row == 0) {
            
            [self dialogSimpleAction];
        }
        else if (indexPath.row == 1) {
            [self dialogOKCancelAction];
        }
        else if (indexPath.row == 2) {
            [self dialogOtherAction];
        }
    }
}

#pragma mark - UIActionSheet

- (void)dialogSimpleAction
{
	// open a dialog with just an OK button
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"This is basic action sheet with just OK button. Why would anyone use it like this? :D"
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"OK",nil];
	actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
	[actionSheet showFromTabBar:self.tabBarController.tabBar];	// show from our table view (pops up in the middle of the table)
}

- (void)dialogOKCancelAction
{
	// open a dialog with an OK and cancel button
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Action sheet with OK and Cancel button."
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:@"OK",nil];
	actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
	[actionSheet showFromTabBar:self.tabBarController.tabBar]; // show from our table view (pops up in the middle of the table)
}

- (void)dialogOtherAction
{
	// open a dialog with two custom buttons
	UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"Action sheet with destructive button and two custom buttons. Also this text is very long, so we can see how it looks on more lines. And one more important sentence goes here."
                                                             delegate:self
                                                    cancelButtonTitle:@"Cancel"
                                               destructiveButtonTitle:@"Destruct"
                                                    otherButtonTitles:@"Other 1", @"Other 2", nil];
	actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
	[actionSheet showFromTabBar:self.tabBarController.tabBar]; // show from our table view (pops up in the middle of the table)
}


#pragma mark - UIAlertView

- (void)alertSimpleAction
{
	// open an alert with just an OK button
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Basic OK"
                                                    message:@"This is simplest alert view with OK button. Tap it!"
                                                   delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
	[alert show];
}

- (void)alertOKCancelAction
{
	// open a alert with an OK and cancel button
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Two buttons"
                                                    message:@"Alert view with two buttons. Cancel and OK. Also this text is little bit longer, so we can see larger alert view."
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"OK", nil];
	[alert show];
}

- (void)alertOtherAction
{
	// open an alert with two custom buttons
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:@"This alert view has 2 custom buttons and no title."
                                                   delegate:self
                                          cancelButtonTitle:NSLocalizedString(@"CancelButtonTitle", nil)
                                          otherButtonTitles:@"Other button title 1 long", @"Short other", nil];
	[alert show];
}

- (void)alertSecureTextAction
{
	// open an alert with two custom buttons
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Secure input"
                                                    message:nil
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"OK", nil];
	alert.alertViewStyle = UIAlertViewStyleSecureTextInput;
    [alert show];
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
