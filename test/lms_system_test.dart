import 'package:test/test.dart';
import '../lib/service/lms_system.dart';

void main() {
  test('creates a student', () {
    final lms = LmsSystem();

    // Create a student
    lms.addStudent(studentId: 'S1', studentName: "ronan");

    expect(lms.students.first.name, 'ronan');
    lms.addStudent(studentId: 'S2', studentName: "kun");

    // Remove the student
    lms.removeStudent(studentId: 'S1');
    expect(lms.students.length, 1);
  });

  test('creates a course', () {
    final lms = LmsSystem();

    lms.addCourse(courseId: 'C01', courseName: "Dart Programming");
    expect(lms.courses.first.name, 'Dart Programming');

    lms.removeCourse(courseId: 'C01');
    expect(lms.courses.length, 0);
  });
}
