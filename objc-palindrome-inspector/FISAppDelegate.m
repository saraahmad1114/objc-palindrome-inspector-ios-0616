//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(BOOL) stringIsPalindrome: (NSString*)string
{
    NSArray *punctuations = @[ @".", @",", @"!", @"?", @":", @";" ];
    //this array is all the punctuation that we went to run the string by to see if it contains any of these characters from the array
    NSString *withoutPunctuation = [string copy];
    //First we copy the contents of the string into this variable because this string will go through the loop and store the contents of all the punctuations being taken out.
    
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        //starts at the beginning of the string
        NSString *punctuation = punctuations[i];
        //storing each of the punctuations into a string, to evaluate a string against a string 
        withoutPunctuation = [withoutPunctuation stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    //then you go ahead and use a method to replace the string with no space and put that all into the variable without punctuation
    
    NSString *spaceless = [withoutPunctuation stringByReplacingOccurrencesOfString:@" " withString:@""];
    //this is to get rid of all the spaces in the string and condense it and put that all into the new variable called spacelss
    
    NSString *lowercase = [spaceless lowercaseString];
    //this method will go ahead and make sure everything is a lowercase
    
    NSString *reverse = [self stringByReversingString:lowercase];
    //here you are calling on another method and reversing the string
    
    BOOL stringIsEqualToReverse = [lowercase isEqualToString:reverse];
    //then you are comparing whether the lowercase version is equal to the reverse verison of the string
    
    return stringIsEqualToReverse;
    //the comparison of both strings is put into a bool so that you can get a true or false

    return NO;
}

//this string is to supposed to take in a string and return the reversed of the string that was given
-(NSString*) stringByReversingString: (NSString*)string
{
    NSString *result = @"";
    //created a string, this string will be returned at the end of the method
    for (NSUInteger i = [string length]; i > 0; i--)
        //this for loop allows for decrementing hence it starts with i being equal to the length of string being put in
    {
        NSUInteger index = i - 1;
        //index accounts for how string starts at zero instead of 1, hence it will begin at the end of the string where the variable i will be equal to the length of the string
        unichar c = [string characterAtIndex:index];
        //unichar comes from c and it stores in each character from the string
        result = [result stringByAppendingFormat:@"%c", c];
        //as the loop goes through it will store the unichar contents into the result variable that was defined at the beginning of the method
    }
    
        return result;
}

@end
