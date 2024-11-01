library firebase_analytics_plugin;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class MyAnalytics {
//initialize in main.dart
  static Future<void> initialize() async {
    await Firebase.initializeApp();
  }

// call logEvent method to add your custom events

  static Future<void> logEvent(String eventName,
      [Map<String, Object>? parameters]) async {
    await FirebaseAnalytics.instance.logEvent(
      name: eventName,
      parameters: parameters,
    );
  }
}
