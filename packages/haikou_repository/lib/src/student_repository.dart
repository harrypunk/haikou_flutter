import 'dart:async';

import './model.dart';
import './random_cn.dart';

abstract class StudentRepsitory {
  Future<List<Student>> getAllStudents();
}

class MockStudentRepository implements StudentRepsitory {
  final Random _rn;
  final int len;
  MockStudentRepository.random(int seed, this.len) : _rn = Random.seed(seed);
  @override
  Future<List<Student>> getAllStudents() async {
    _rn.names(10);
    return Future.value([]);
  }
}
