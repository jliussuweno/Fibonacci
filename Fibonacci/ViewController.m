//
//  ViewController.m
//  Fibonacci
//
//  Created by Jlius Suweno on 09/10/20.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self displayFibonacci:10];
}

- (void)displayFibonacciNumber:(int) number {
    NSMutableArray *fibSeries = [NSMutableArray new];
    int total = 0;
    int prev = 1;
    for (int i = 0 ; i < number; i++) {
        total = total + prev;
        prev = total - prev;
        [fibSeries addObject:[NSNumber numberWithInt:total]];
    }
    NSLog(@"Fibonacci number are: %@", fibSeries);
}

- (void)displayFibonacci:(int) number {
    int fn = 1;
    int fn1 = 1;
    int fn2 = 0;
    
    for(int i = 1; i <= number; i++) {
        NSLog(@"Fibonacci angka ke %d adalah %d", i, fn);
        fn = fn2 + fn1;
        fn2 = fn1;
        fn1 = fn;
    }
}


@end
