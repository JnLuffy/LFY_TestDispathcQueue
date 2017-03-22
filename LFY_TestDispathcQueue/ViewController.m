//
//  ViewController.m
//  LFY_TestDispathcQueue
//
//  Created by apple on 17/3/22.
//  Copyright © 2017年 com.cooper.dtag. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    [self testSerialDisPatchQueue];
    [self testConcurrentDisPatchQueue];
    
    
}

-(void)testSerialDisPatchQueue{
    dispatch_queue_t queue = dispatch_queue_create("lfy", NULL);
    dispatch_async(queue,^{
        NSLog(@"1");
    });
    dispatch_async(queue,^{
        NSLog(@"2");
    });
    
    dispatch_async(queue,^{
        NSLog(@"3");
    });
    
    dispatch_async(queue,^{
        NSLog(@"4");
    });
    
    dispatch_async(queue,^{
        NSLog(@"5");
    });
    
    dispatch_async(queue,^{
        NSLog(@"6");
    });
    
    dispatch_async(queue,^{
        NSLog(@"7");
    });
    
    dispatch_async(queue,^{
        NSLog(@"8");
    });
    
    dispatch_async(queue,^{
        NSLog(@"9");
    });
    
    
}


-(void)testConcurrentDisPatchQueue{
    dispatch_queue_t queue = dispatch_queue_create("lfy", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(queue,^{
        NSLog(@"1");
    });
    dispatch_async(queue,^{
        NSLog(@"2");
    });
    
    dispatch_async(queue,^{
        NSLog(@"3");
    });
    
    dispatch_async(queue,^{
        NSLog(@"4");
    });
    
    dispatch_async(queue,^{
        NSLog(@"5");
    });
    
    dispatch_async(queue,^{
        NSLog(@"6");
    });
    
    dispatch_async(queue,^{
        NSLog(@"7");
    });
    
    dispatch_async(queue,^{
        NSLog(@"8");
    });
    
    dispatch_async(queue,^{
        NSLog(@"9");
    });
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
