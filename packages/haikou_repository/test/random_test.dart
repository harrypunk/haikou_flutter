import '../lib/src/random_cn.dart' as cn;
import 'package:test/test.dart';

void main() {
  group('random functions', () {
    setUp(() {});

    test('random names', () {
      final rn = cn.NameGenerator.seed(10001);
      rn.names(20).forEach((n) {
        print(n);
      });
    });
  });
}
