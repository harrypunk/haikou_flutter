import '../lib/src/random_cn.dart' as cn;
import 'package:test/test.dart';
import 'dart:math' show Random;

void main() {
  group('random functions', () {
    setUp(() {
    });

    test('seed 10001', () {
      final rn = Random(10001);
      final expect_list =[6, 86, 71, 54, 4, 52, 13, 26, 6, 90, 8, 9, 22, 44, 65, 5, 68, 15, 40, 33];
      final list1 = Iterable.generate(20).map((_) => rn.nextInt(100)).toList();
      expect(list1, expect_list);
    });

    test('random names', () {
      final rn = cn.Random.seed(10001);
      final nameList = rn.names(20);
      print(nameList);
    });
  });
}
