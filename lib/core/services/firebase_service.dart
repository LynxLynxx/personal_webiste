import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:personal_website/core/services/firebase_options.dart';

class FirebaseService {
  static Future<void> init() async {
    await _startFirebase(options: DefaultFirebaseOptions.currentPlatform);
  }

  static Future<void> _startFirebase({required FirebaseOptions options}) async {
    await Firebase.initializeApp(options: options);

    if (kReleaseMode) {
      FlutterError.onError = (errorDetails) {
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    }

    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  }
}
