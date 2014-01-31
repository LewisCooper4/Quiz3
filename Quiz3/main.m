//
//  main.m
//  Quiz3
//
//  Created by Lewis Cooper on 1/31/14.
//  Copyright (c) 2014 Lewis Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "Quiz3AppDelegate.h"

int main(int argc, char *argv[])
{
    // #1 print out first name
    NSLog(@"Lewis Cooper");
    
    // #2 define a string called first name that points to my first name
    NSString *firstName = @"Lewis";
    
    // #3 print the string variable in 2 using nslog
    NSLog(@"%@", firstName);
    
    // #4 create an nsnumber and set it to 200
    NSNumber *number = @200;
    
    // #5 use nslog to print the number from 4
    NSLog(@"%@", number);
    
    // #6 create an array of fruits of three strings of fruits
    NSArray *fruits = [NSArray arrayWithObjects:@"Apple", @"Orange", @"Banana", nil];
    
    // #7 use fast enumeration to loop through 3 strings in array and use nslog
    for (NSString *s in fruits) {
        NSLog(@"%@", s);
    }
    
    // #8 create a dictionary with the three fruits and a rating from 1 to 10
    NSArray *sweetness = [NSArray arrayWithObjects:@8, @7, @4, nil];
    NSDictionary *dict = [NSDictionary dictionaryWithObjects:sweetness forKeys:fruits];
    
    // #9 print the sweetness of one of the fruits with nslog and accessing the dictionary
    NSLog(@"%@", [dict objectForKey:@"Apple"]);
    
    // #10 create an nsuiinteger with value of 123 and print it
    NSUInteger myUInteger = 123;
    NSLog(@"%d", myUInteger);
    
    // #11 create two nsnumber and multiply them
    NSNumber *num1 = @9;
    NSNumber *num2 = @4;
    NSNumber *product = [NSNumber numberWithInt:[num1 intValue] * [num2 intValue]];
    NSLog(@"%@", product);
    
    // #12 create nsstring that contains last name
    NSString *lastName = @"Cooper";
    
    
    // #13 create a string that concatenates the full name
    NSString *fullName = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
    
    // #14 print out the full name
    NSLog(@"%@", fullName);
    
    // #15 use if and else if and else to print out something about sweetness of fruits
    //     iterate through the dictionary using fast enumeration
    
    for (NSString *key in dict) {
        NSNumber *num = [dict objectForKey:key];
        int sweet = [num intValue];
        if (sweet < 4) {
            NSLog(@"Not Sweet");
        }
        else if (sweet < 8) {
            NSLog(@"Somewhat Sweet");
        }
        else {
            NSLog(@"Sweet");
        }
    }
    
    // #16 using typedef enum to create an alias caled dayofweek for integer values as the days of the week
    typedef enum {
        MON = 1,
        TUE = 2,
        WED = 3,
        THU = 4,
        FRI = 5,
        SAT = 6,
        SUN = 7
    } DayOfWeek;
    
    // #17 define a variable called currentDay
    DayOfWeek *currentDay;
    
    // #18 make a block
    void (^myFirstBlock)(void) = ^void(void){
        NSLog(@"Hello World");
    };
    myFirstBlock();
    
    // #19 create a block to accept nsstring
    void (^mySecondBlock) (NSString *) = ^void (NSString *arg) {
        NSLog(@"%@", arg);
    };
    mySecondBlock(@"Hello");
    mySecondBlock(@"World");
    
}
