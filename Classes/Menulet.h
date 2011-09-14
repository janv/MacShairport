//
//  Menulet.h
//  MacShairport
//
//  Created by Jason Whitehorn on 9/8/11.
//  Copyright 2011 Jason Whitehorn. All rights reserved.
//
#import <Foundation/Foundation.h>


@interface Menulet : NSViewController {
    NSStatusItem *statusItem;
    NSImage *statusIcon;
    IBOutlet NSMenu *menu;
}
@property (nonatomic, retain) IBOutlet NSMenu *menu;

@end
