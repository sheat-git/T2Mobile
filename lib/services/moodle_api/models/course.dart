import 'package:t2mobile/services/cache_database/cache_database.dart';

mixin CourseModel {
  int get id;
  String get fullname;
  int? get category => null;
  int? get categoryid => null;

  Course toDb({
    required bool isEnroled,
    DateTime? updatedAt,
  }) {
    final String nameJa, nameEn;
    const splitter = ' / ';
    final splittedName = fullname.split(splitter);
    if (splittedName.length >= 2) {
      // コース名にそもそも「 / 」が含まれている場合も考慮（ほぼないはず）
      final mid = splittedName.length ~/ 2;
      nameJa = splittedName.sublist(0, mid).join(splitter);
      nameEn = splittedName.sublist(mid).join(splitter);
    } else {
      // ありえないはず
      nameJa = fullname;
      nameEn = fullname;
    }
    // EnroledCourseModelではcategoryがint
    // FilteredCourseModelではcategoryidがint
    final categoryId = category ?? categoryid;
    return Course(
      id: id,
      nameJa: nameJa,
      nameEn: nameEn,
      categoryId: categoryId,
      isEnrolled: isEnroled,
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }
}
