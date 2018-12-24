package com.hdsx.flutterapp;

import android.os.Bundle;
import android.widget.Toast;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);

    new MethodChannel(getFlutterView(), "com.coofee.flutterdemoapp/sdk/toast")
            .setMethodCallHandler(new MethodChannel.MethodCallHandler() {
              @Override
              public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                if ("show".equals(methodCall.method)) {
                  String text = methodCall.argument("text");
                  int duration = methodCall.argument("duration");
                  Toast.makeText(MainActivity.this, text, duration).show();
                }
              }
            });
  }
}
