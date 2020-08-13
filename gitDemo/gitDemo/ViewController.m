//
//  ViewController.m
//  gitDemo
//
//  Created by zhangkai on 2020/8/12.
//  Copyright © 2020 zhangkai. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>
@interface ViewController ()<WKUIDelegate,WKNavigationDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    //    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
        [self.view addSubview:webView];
        webView.UIDelegate = self;
        webView.navigationDelegate = self;
    

    NSString *fileStr = [[NSBundle mainBundle] pathForResource:@"hunan" ofType:@"txt"];
    NSString *str = [NSString stringWithContentsOfFile:fileStr encoding:NSUTF8StringEncoding error:nil];
    
    
    
    NSString *strHTML = str;
        [webView loadHTMLString:strHTML baseURL:nil];
    
    
    NSLog(@"1);
    
    
   
}


@end
