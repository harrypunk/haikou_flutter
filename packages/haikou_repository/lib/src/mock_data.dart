import './random_cn.dart';
import './student_repository.dart';
import './model.dart';

class MockStudentRepository implements StudentRepsitory {
  final NameGenerator _nameGen;
  final int len;
  MockStudentRepository.random({required int seed, int? len})
      : _nameGen = NameGenerator.seed(seed),
        this.len = len ?? 32;

  @override
  Future<List<Student>> getAllStudents() {
    return Future.value([]);
  }
}