//
//  Issue594AppDelegate.m
//  Issue594
//
//  Created by Peter Stromberg on 2011-07-17.
//  Copyright 2011 NA. All rights reserved.
//

#import "Issue594AppDelegate.h"
#import "TopController.h"
#import "Level1Controller.h"

@implementation Issue594AppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
  TTNavigator* navigator = [TTNavigator navigator];
  navigator.persistenceMode = TTNavigatorPersistenceModeAll;
  
  TTURLMap* map = navigator.URLMap;
  [map from:@"*" toViewController:[TTWebController class]];
  [map from:kTopURL toSharedViewController:[TopController class]];
  
  [map from:kLevel1URL toViewController:[Level1Controller class]];

  if (![navigator restoreViewControllers]) {
    [navigator openURLAction:[TTURLAction actionWithURLPath:kTopURL]];
  }  
}

- (BOOL)application:(UIApplication*)application handleOpenURL:(NSURL*)URL {
  [[TTNavigator navigator] openURLAction:[TTURLAction actionWithURLPath:URL.absoluteString]];
  return YES;
}

@end
