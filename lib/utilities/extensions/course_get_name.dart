import 'package:flutter/material.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';

extension CourseGetName on Course {
  String getName(BuildContext context) {
    final isJa = Localizations.localeOf(context).languageCode == 'ja';
    return isJa ? nameJa : nameEn;
  }
}
