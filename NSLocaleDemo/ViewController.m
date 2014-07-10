//
//  ViewController.m
//  NSLocaleDemo
//
//  Created by nonstriater on 14-7-10.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@",[[NSLocale currentLocale] localeIdentifier]);
    NSLog(@"%@,%@,%@,%@,%@,%@,%@,%@,%@",[[NSLocale currentLocale] objectForKey:NSLocaleIdentifier],
          [[NSLocale currentLocale] objectForKey:NSLocaleLanguageCode],
           [[NSLocale currentLocale] objectForKey:NSLocaleCountryCode],
           [[NSLocale currentLocale] objectForKey:NSLocaleCalendar],
           [[NSLocale currentLocale] objectForKey:NSLocaleUsesMetricSystem],
           [[NSLocale currentLocale] objectForKey:NSLocaleCurrencySymbol],
           [[NSLocale currentLocale] objectForKey:NSLocaleQuotationBeginDelimiterKey],
           [[NSLocale currentLocale] objectForKey:NSLocaleMeasurementSystem],
           [[NSLocale currentLocale] objectForKey:NSLocaleExemplarCharacterSet]);
    
    NSLog(@"%@",[NSLocale preferredLanguages]);
    
    NSLog(@"%@",[NSLocale ISOCountryCodes]);
    
    // 全部中文输出
    for (NSString *code in [NSLocale ISOCountryCodes]) {
        NSLog(@"%@",[[NSLocale currentLocale] displayNameForKey:NSLocaleCountryCode value:code]);
    }
    
    // 英文显示
    for (NSString *code in [NSLocale ISOCountryCodes]) {
        NSLocale *locale = [NSLocale localeWithLocaleIdentifier:@"en"];
        NSLog(@"countrycode=%@",[locale displayNameForKey:NSLocaleCountryCode value:code]);
        
        
    }
    
    for (NSString *code in [NSLocale ISOLanguageCodes]) {
        NSLocale *locale = [NSLocale localeWithLocaleIdentifier:@"en"];
        NSLog(@"langcode = %@",[locale displayNameForKey:NSLocaleLanguageCode value:code]);
    }
    
   
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
