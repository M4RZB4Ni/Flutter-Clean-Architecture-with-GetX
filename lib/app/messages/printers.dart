import 'package:flutter/foundation.dart';

void realDebugPrint(final dynamic message) {
  if (!kReleaseMode) {
    debugPrint('$message');
  }
}
