//
//  Menulet.m
//  MacShairport
//
//  Created by Jason Whitehorn on 9/8/11.
//  Copyright 2011 Jason Whitehorn. All rights reserved.
//

#import "Menulet.h"

@implementation Menulet
@synthesize menu;

- (void)dealloc {
    [statusItem release];
    [statusIcon release];
    [super dealloc];
}

- (void)awakeFromNib {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSString *path = [bundle pathForResource:@"shairport_22" ofType:@"png"];
    NSLog(@"%@", path);
    statusIcon= [[NSImage alloc] initWithData:[NSData dataWithContentsOfFile:path]];    
    
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    [statusItem setHighlightMode:YES];
    [statusItem setTitle:[NSString stringWithString:@""]]; 
    [statusItem setImage:statusIcon];
    [statusItem setEnabled:YES];
    [statusItem setToolTip:@"Shairport"];
    
    [statusItem setMenu:menu];
    
    [statusItem setTarget:self];
}

@end
