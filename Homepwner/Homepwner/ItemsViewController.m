//
//  UITableViewController.m
//  Homepwner
//
//  Created by Ian D Clark on 12/16/12.
//  Copyright (c) 2012 Ian D Clark. All rights reserved.
//

#import "ItemsViewController.h"
#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation ItemsViewController

-(id)init
{
    //call the superclasses designated initializer
    self = [super initWithStyle:UITableViewStyleGrouped ];
    if (self) {
        UINavigationItem *n = self.navigationItem;
        [n setTitle:@"Homepwner"];
        
        //create a new barr button item that will send new item message
        UIBarButtonItem *bbi = [[UIBarButtonItem alloc]
                                initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                target:self
                                action:@selector(addNewItem:)];
        //set this bar button item as the right item in the nav bar
        [[self navigationItem] setRightBarButtonItem:bbi];
        
        //left button
        [[self navigationItem] setLeftBarButtonItem:[self editButtonItem]];
     }
    return self;
}

-(id)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section
{
   return [[[BNRItemStore sharedStore] allItems] count];
  
}

-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // //check for a reusable cell first use that if it exists
     UITableViewCell *cell =
     [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    
    //if there is no reusable cell of this type, create a new one
    if (!cell) {
        cell = [[UITableViewCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:@"UITableViewCell"];
    }
   
    //Bronze challenge create a predicate to filter the array ising value in Dollars search string
        //set the text on the cell with the description of the item
    //that is at the nth index of itmes, where n = row this cell
    //will appear in on the tableview
    BNRItem *p =[[[BNRItemStore sharedStore] allItems]
                  objectAtIndex:[indexPath row]];
    
    [[cell textLabel] setText:[p description]];
    
    return cell;
}

-(IBAction)addNewItem:(id)sender
{
    //create new BNRItem and add it to the store
    BNRItem *newItem = [[BNRItemStore sharedStore] createItem];
    
    //figure out where that item is in the array
    int lastRow = [[[BNRItemStore sharedStore] allItems] indexOfObject:newItem];
    
    NSIndexPath *ip =[NSIndexPath indexPathForRow:lastRow inSection:0];
    
    //insert this new row into the table
    [[self tableView] insertRowsAtIndexPaths:[NSArray arrayWithObject:ip]
                             withRowAnimation:UITableViewRowAnimationTop];
     }

-(void)tableView:(UITableView *)tableView
commitEditingStyle:(UITableViewCellEditingStyle)editingStyle
forRowAtIndexPath:(NSIndexPath *)indexPath
{
    //if the table view is asking to commit a delete command...
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        BNRItemStore *ps = [BNRItemStore sharedStore];
        NSArray *items = [ps allItems];
        BNRItem *p = [items objectAtIndex:[indexPath row]];
        [ps removeItem:p];
        //we also remove that row from the table view with an animation
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                         withRowAnimation:UITableViewRowAnimationFade];
    }
}

-(void)tableView:(UITableView *)tableView
moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath
     toIndexPath:(NSIndexPath *)destinationIndexPath
{
    [[BNRItemStore sharedStore] moveItemAtIndex:[sourceIndexPath row]
                                        toIndex:[destinationIndexPath row]];
}

//bronze challenge
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return @"Remove";
}

-(void)tableView:(UITableView *)aTableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *detailViewController = [[DetailViewController alloc] init];
    
    NSArray *items = [[BNRItemStore sharedStore] allItems];
    BNRItem *selectedItem = [items objectAtIndex:[indexPath row]];
    //give detail view controller a pointer to the item object in row
    [detailViewController setItem:selectedItem];
     
    //push it onto the top of the navigation controllers stack
    [[self navigationController] pushViewController:detailViewController
                                           animated:YES];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)io
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad){
        return YES;
    } else {
        return (io == UIInterfaceOrientationPortrait);
    }
}

@end
