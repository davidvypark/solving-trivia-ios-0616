//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSDictionary *statesAndCapitols = @{
                                        
        @"Montgomery"       :@"Alabama        ",
        @"Juneau"           :@"Alaska         ",
        @"Phoenix"          :@"Arizona        ",
        @"Little Rock"      :@"Arkansas       ",
        @"Sacramento"       :@"California     ",
        @"Denver"           :@"Colorado       ",
        @"Hartford"         :@"Connecticut    ",
        @"Dover"            :@"Delaware       ",
        @"Tallahassee"      :@"Florida        ",
        @"Atlanta"          :@"Georgia        ",
        @"Honolulu"         :@"Hawaii         ",
        @"Boise"            :@"Idaho          ",
        @"Springfield"      :@"Illinois       ",
        @"Indianapolis"     :@"Indiana        ",
        @"Des Moines"       :@"Iowa           ",
        @"Topeka"           :@"Kansas         ",
        @"Frankfort"        :@"Kentucky       ",
        @"Baton Rouge"      :@"Louisiana      ",
        @"Augusta"          :@"Maine          ",
        @"Annapolis"        :@"Maryland       ",
        @"Boston"           :@"Massachusetts  ",
        @"Lansing"          :@"Michigan       ",
        @"Saint Paul"       :@"Minnesota      ",
        @"Jackson"          :@"Mississippi    ",
        @"Jefferson City"   :@"Missouri       ",
        @"Helena"           :@"Montana        ",
        @"Lincoln"          :@"Nebraska       ",
        @"Carson City"      :@"Nevada         ",
        @"Concord New"      :@"Hampshire      ",
        @"Trenton New"      :@"Jersey         ",
        @"Santa Fe"         :@"New Mexico     ",
        @"Albany"           :@"New York       ",
        @"Raleigh"          :@"North Carolina ",
        @"Bismarck"         :@"North Dakota   ",
        @"Columbus"         :@"Ohio           ",
        @"Oklahoma City"    :@"Oklahoma       ",
        @"Salem"            :@"Oregon         ",
        @"Harrisburg"       :@"Pennsylvania   ",
        @"Providence"       :@"Rhode Island   ",
        @"Columbia"         :@"South Carolina ",
        @"Pierre"           :@"South Dakota   ",
        @"Nashville"        :@"Tennessee      ",
        @"Austin"           :@"Texas          ",
        @"Salt Lake City"   :@"Utah           ",
        @"Montpelier"       :@"Vermont        ",
        @"Richmond"         :@"Virginia       ",
        @"Olympia"          :@"Washington     ",
        @"Charleston"       :@"West Virginia  ",
        @"Madison"          :@"Wisconsin      ",
        @"Cheyenne"         :@"Wyoming        "
        };
    
    
    [self stateWithoutCapitolLetters:statesAndCapitols];
    
    return YES;
}



-(NSString *)stateWithoutCapitolLetters:(NSDictionary *)inputDictionary{
    
    NSMutableString *capitolWithNoSpaceNoCaps = [[NSMutableString alloc] init];
    NSMutableString *stateWithNoSpacesNoCaps = [[NSMutableString alloc] init];
    
    
    for (NSString *capitol in inputDictionary) {
        NSMutableString *mutCapitol = [capitol mutableCopy];
        
        //makes lowercasestring and take out spaces
        
        capitolWithNoSpaceNoCaps = [[[mutCapitol lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""] mutableCopy];
        
        stateWithNoSpacesNoCaps = [[[inputDictionary[mutCapitol] lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""] mutableCopy];
        
        NSLog(@"%@ : %@", capitolWithNoSpaceNoCaps, stateWithNoSpacesNoCaps);
        NSUInteger checker = 0;
        for(NSUInteger a = 0; a < stateWithNoSpacesNoCaps.length; a++) {
            NSString *letterAtIndex = [stateWithNoSpacesNoCaps substringWithRange:NSMakeRange(a, 1)];
            NSLog(@"Current Letter = %@", letterAtIndex);
            
            if ([capitolWithNoSpaceNoCaps containsString:letterAtIndex]) {
                checker ++;
                NSLog(@"Checker value = %li", checker);
                
            }
        }
        NSLog(@"CHECKER AT END: %li", checker);
        if (checker == 0) {
            NSLog(@"%@", inputDictionary[capitol]);
            return inputDictionary[capitol];
        }
        
        
    }
    
    
    return @"There are no States";
    
}


@end
