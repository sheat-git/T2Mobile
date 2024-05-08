import 'package:drift/drift.dart';

class Timestamps extends Table {
  TextColumn get id => text()();
  DateTimeColumn get at => dateTime()();

  @override
  Set<Column> get primaryKey => {id};
}

abstract final class TimestampIds {
  static const updateAssignments = 'updateAssignments';
  static const updateCourses = 'updateCourses';
  static updateCourseContents(int id) => 'updateCourseContents_$id';
  static const updateHiddenSubmissions = 'updateHiddenSubmissions';
  static const updateSubmittedSubmissions = 'updateSubmittedSubmissions';
}
