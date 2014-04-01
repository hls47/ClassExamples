//
//  CoursesViewController.m
//  MRCD_Example
//
//  Created by Jay Palat on 3/27/14.
//  Copyright (c) 2014 Jay Palat. All rights reserved.
//

#import "CoursesViewController.h"
#import "Course.h"
#import "StudentsViewController.h"


@interface CoursesViewController ()

@end

@implementation CoursesViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void) viewWillAppear:(BOOL)animated{
   [super viewDidLoad];
    [self.tableView reloadData];
}

- (void)viewDidLoad
{
    [self fetchCourses];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
}

- (void)fetchCourses
{
    NSArray * courses = [Course MR_findAll] ;
    
    NSLog(@"Inital course size: %lu", (unsigned long)courses.count);
    self.courses = courses;
    
    NSLog(@"Courses size: %lu", (unsigned long)self.courses.count);
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
    return [self.courses count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString  *CELLNAME= @"ClassID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELLNAME forIndexPath:indexPath];
    
    // Configure the cell...
    Course *course =[self.courses objectAtIndex:[indexPath row] ];
    //cell.textLabel.text = course.name;
    

     cell.textLabel.text = [[self.courses objectAtIndex:[indexPath row] ] name];
    
    
    return cell;
}


//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    StudentsViewController *studentView = [[StudentsViewController alloc] init];
//    studentView.className = [self.courses objectAtIndex:indexPath.row];
//    [self.navigationController pushViewController:studentView animated:YES];
//}
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


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    StudentsViewController *upcoming = segue.destinationViewController;
    if ([[segue identifier] isEqualToString:@"goToClass"]){
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Course *course = [self.courses objectAtIndex:[indexPath row]];
        upcoming.className = course;
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}




@end
