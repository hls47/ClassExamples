//
//  StudentsViewController.m
//  MRCD_Example
//
//  Created by Jay Palat on 4/1/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import "StudentsViewController.h"
#import "Student.h"
#import "Course.h"

@interface StudentsViewController ()

@end

@implementation StudentsViewController

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
    [self fetchStudentsFromClass:self.className];
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItem)];
    [self.navigationItem setLeftBarButtonItem:addButton];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) addItem{
    Student * student = [Student MR_createEntity];
    student.name = @"New Student";
    [self.className addTeachesObject:student];

    [[NSManagedObjectContext MR_defaultContext] MR_saveToPersistentStoreWithCompletion:
     ^(BOOL success, NSError *error) {
         if (success || error == nil) {
             [self fetchStudentsFromClass:self.className];
         } else {
             if (error) {
                 NSLog(@"Error with save");
             }
             
         }
     }];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.studentList count];
}

-(void)fetchStudentsFromClass:(Course *)className{
    NSLog(@"Fetching Students for %@", self.className);
    
    //Course *currentCourse = [[Course MR_findByAttribute:@"name" withValue:self.className] objectAtIndex:0];
    self.studentList = [[[self.className teaches] allObjects] mutableCopy];
    NSLog(@"Student lst : %d", [self.studentList count]);
    [self.tableView reloadData];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString static *reuse = @"STUDENT";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuse];
    if (cell==nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuse];
    }
    cell.textLabel.text = [[self.studentList objectAtIndex:[indexPath row]] name];
    
    return cell;
    
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
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
