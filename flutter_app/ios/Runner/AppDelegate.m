#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.

  FlutterViewController* controller = (FlutterViewController*)self.window.rootViewController;

    FlutterMethodChannel* toastChannel = [FlutterMethodChannel
                                              methodChannelWithName:@"com.coofee.flutterdemoapp/sdk/toast"
                                              binaryMessenger:controller];

    [toastChannel setMethodCallHandler:^(FlutterMethodCall* call, FlutterResult result) {
        if ([@"show" isEqualToString:call.method]) {
            // 展示toast;
            NSLog(@"显示toast....")
        }
    }];

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
