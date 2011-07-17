//
//  main.m
//  Issue594
//
//  Created by Peter Stromberg on 2011-07-17.
//  Copyright 2011 NA. All rights reserved.
//

#import <UIKit/UIKit.h>

int main(int argc, char *argv[])
{
  NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
  int retVal = UIApplicationMain(argc, argv, nil, nil);
  [pool release];
  return retVal;
}
