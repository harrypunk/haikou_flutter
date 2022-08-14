class Student {
  final int id;
  final String name;
  final int age;
  final int gender;
  final String phone;
  final int schoolId;
  final int gradeId;
  final int familyId;

  const Student({
    required this.id,
    required this.name,
    this.age = 12,
    this.gender = 1,
    this.phone = "",
    required this.familyId,
    required this.schoolId,
    required this.gradeId,
  });
}

class Grade {
  final int id;
  final String name;
  const Grade({
    required this.id,
    required this.name,
  });
}

class School {
  final int id;
  final String name;
  final String description;
  const School({
    required this.id,
    required this.name,
    this.description = "",
  });
}

class Family {
  final int id;
  final List<int> children;
  final List<int> parents;
  const Family({
    required this.id,
    required this.children,
    required this.parents,
  });
}

class Parent {
  final int id;
  final String name;
  final int gender;
  final String phone;
  final int familyId;
  const Parent({
    required this.id,
    required this.name,
    this.gender = 1,
    required this.phone,
    required this.familyId,
  });
}
