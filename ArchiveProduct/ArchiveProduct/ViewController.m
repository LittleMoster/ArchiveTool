//
//  ViewController.m
//  ArchiveProduct
//
//  Created by cguo on 2017/8/15.
//  Copyright © 2017年 zjq. All rights reserved.
//

#import "ViewController.h"
#import "ArchiveTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    ArchiveTool *tool=[[ArchiveTool alloc]init];
    tool.product=@"name";
    tool.name=@"product";
    tool.age=12;
    tool.age2=23;
    tool.age3=43;
    
    
    [tool SaveForArchive];
    
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ArchiveTool *tool=[ArchiveTool GetForArchive];
    
    NSLog(@"%@",tool.name);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
