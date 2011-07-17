//
//  HomeController.m
//  Issue594
//
//  Created by Peter Stromberg on 2011-07-17.
//  Copyright 2011 NA. All rights reserved.
//

#import "TopController.h"


@implementation TopController

@synthesize isLoggedIn = _isLoggedIn;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if ((self = [super initWithNibName:nibNameOrNil	bundle:nibBundleOrNil])) {
    self.title = @"Top";
  }
  return self;
}

- (void)createModel {
  self.variableHeightRows = NO;
  self.tableView.rowHeight = 64;
  TTListDataSource* dataSource = [[[TTListDataSource alloc] init] autorelease];
  [dataSource.items addObject:[TTTableTextItem itemWithText:@"Level 1" URL:kLevel1URL]];
  self.dataSource = dataSource;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  [self invalidateModel];
}

@end
