//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}


- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    NSMutableString *rollCall = [[NSMutableString alloc] init];
    for (NSUInteger i = 0; i < [dwarfs count]; i++) {
        if (i < [dwarfs count] - 1) {
            [rollCall appendFormat:@"%u. %@ | ", i + 1, dwarfs[i]];
        } else {
            [rollCall appendFormat:@"%u. %@", i + 1, dwarfs[i]];
        }
    }
    return rollCall;
}


- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *shoutPowers = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [powers count]; i++) {
        NSString *shoutPower = [powers[i] uppercaseString];
        shoutPower = [shoutPower stringByAppendingString:@"!"];
        [shoutPowers addObject:shoutPower];
    }
    return shoutPowers;
}


- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSArray *shoutPowers = [self arrayOfPlaneteerShoutsFromArray:powers];
    NSMutableString *summonCaptain = [[NSMutableString alloc] initWithString:@"Let our powers combine:\n"];
    for (NSUInteger i = 0; i < [shoutPowers count]; i++) {
        [summonCaptain appendFormat:@"%@\n", shoutPowers[i]];
    }
    [summonCaptain appendString:@"Go Planet!"];
    return summonCaptain;
}


- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    for (NSUInteger i = 0; i < [cheesesInStock count]; i++) {
        for (NSUInteger j = 0; j < [premiumCheeseNames count]; j++) {
            if ([cheesesInStock[i] isEqualToString:premiumCheeseNames[j]]) {
                return cheesesInStock[i];
            }
        }
    }
    return @"No premium cheeses in stock.";
}


- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *paperBill = [[NSString alloc] initWithFormat:@"$%u", [moneyBags[i] length]];
        [paperBills addObject:paperBill];
    }
    return paperBills;
}


@end
