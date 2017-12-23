#import <UIKit/UIKit.h>
#import "MTController.h"
#import "MTWindow.h"

@class MTController;

@interface MTAppDelegate : NSObject <UIApplicationDelegate> {
  UIWindow* window;
  MTController* controller;
}
@end
