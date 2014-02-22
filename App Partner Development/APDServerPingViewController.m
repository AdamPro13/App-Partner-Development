//
//  APDServerPingViewController.m
//  App Partner Development
//
//  Created by Adam Proschek on 2/22/14.
//  Copyright (c) 2014 Adam Proschek. All rights reserved.
//

#import "APDServerPingViewController.h"
#import "APDPingRequestHandler.h"

@interface APDServerPingViewController ()

@property (nonatomic, strong) APDPingRequestHandler *pingRequestHandler;

@property (strong, nonatomic) IBOutlet UIView *popupView;
@property (strong, nonatomic) IBOutlet UILabel *popupViewTextLabel;
@property (strong, nonatomic) NSDate *requestStart;

- (IBAction)pingButtonPressed:(UIButton *)sender;

@end

@implementation APDServerPingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self setUpUI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pingButtonPressed:(UIButton *)sender
{
    if (self.pingRequestHandler == nil)
    {
        self.pingRequestHandler = [APDPingRequestHandler pingRequestHandlerForSender:self];
    }
    
    [self.pingRequestHandler sendRequest];
    self.requestStart = [NSDate date];
}

- (void)setUpUI
{
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_apppartner"]];
}

- (void)requestEndedWithData:(id)data forRequest:(NSString *)requestUrl
{
    NSTimeInterval responseTime = -[self.requestStart timeIntervalSinceNow];
    self.requestStart = nil;
    
    self.popupViewTextLabel.text = [NSString stringWithFormat:@"Response: %@\nPing Time: %f", data, responseTime];
    [self.popupView setHidden:NO];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if (!self.popupView.hidden)
    {
        for (UITouch *touch in touches)
        {
            if (touch.view != self.popupView)
            {
                [self.popupView setHidden:YES];
            }
        }
    }
}

@end
