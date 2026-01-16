import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'manager_service.g.dart';

// For demonstration only
@riverpod
bool isManager(Ref ref) {
  return Random().nextBool();
}
