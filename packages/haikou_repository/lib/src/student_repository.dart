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
    return Future.value(Iterable.generate(this.len)
        .map((i) => Student(
            name: "",
            age: 14,
            schoolId: 1001,
            gender: 1,
            phone: "655001$i"))
        .toList());
  }
}
