import 'dart:async';

import './model.dart';

abstract class StudentRepsitory {
  Future<List<Student>> getAllStudents();
}
