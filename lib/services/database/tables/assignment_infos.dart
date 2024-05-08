import 'package:drift/drift.dart';

class AssignmentInfos extends Table {
  IntColumn get id => integer()();
  BoolColumn get isHidden => boolean()();
}
