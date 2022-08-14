import 'dart:async';

import './model.dart';

abstract class StudentRepsitory {
  Future<List<Student>> getAllStudents();
}

class MockStudentRepository implements StudentRepsitory {
  @override
  Future<List<Student>> getAllStudents() async {
    return Future.value(Iterable.generate(20)
        .map((i) => Student(
            name: "李四$i",
            age: 14,
            schoolId: 1001,
            gender: 1,
            phone: "655001$i"))
        .toList());
  }
}
