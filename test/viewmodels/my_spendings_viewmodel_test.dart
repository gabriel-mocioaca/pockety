import 'package:flutter_test/flutter_test.dart';
import 'package:pockety/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('MySpendingsViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
