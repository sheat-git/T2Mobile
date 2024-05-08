import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:t2mobile/providers/features/courses/course_category.dart';
import 'package:t2mobile/providers/features/courses/courses.dart';
import 'package:t2mobile/router/routes/courses/course.dart';
import 'package:t2mobile/router/routes/courses/courses.dart';
import 'package:t2mobile/router/shell/route.dart';
import 'package:t2mobile/utilities/extensions/course_get_name.dart';
import 'package:t2mobile/views/components/cacheable_scafflod.dart';
import 'package:t2mobile/views/components/list_item.dart';

class CoursesPage extends ConsumerWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBar = SliverAppBar.medium(
      title: Text(AppLocalizations.of(context)!.courses),
      actions: [
        IconButton(
          icon: const Icon(Symbols.view_week),
          onPressed: () {
            const route = CoursesRoute(isTimetable: true);
            if (GoRouter.of(context).canPop()) {
              route.pushReplacement(context);
            } else {
              route.go(context);
            }
          },
        ),
      ],
    );

    return CacheableScaffold(
      provider: coursesProvider,
      notifier: coursesProvider.notifier,
      updatedAtSelector: (data) => data.updatedAt,
      appBarBuilder: (context, data) => data == null ? appBar : null,
      builder: (context, data) {
        final categoryIds =
            data.courses.keys.sorted((id1, id2) => id2.compareTo(id1));
        return NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [appBar],
          body: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: RefreshIndicator(
              onRefresh: () => ref.read(coursesProvider.notifier).refresh(),
              child: ListView.separated(
                itemCount: categoryIds.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) {
                  final categoryId = categoryIds[index];
                  final courses = data.courses[categoryId]!
                      .sortedBy((c) => c.getName(context));
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Consumer(
                        builder: (context, ref, _) => ListItem(
                          child: Text(
                            ref.watch(courseCategoryProvider(categoryId)).when(
                                  data: (data) => data,
                                  error: (error, stackTrace) =>
                                      '${AppLocalizations.of(context)!.unknownCategory} (ID: $categoryId)',
                                  loading: () => '',
                                ),
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      ...List.generate(
                        courses.length * 2 - 1,
                        (index) {
                          if (index.isOdd) {
                            return const Divider(
                              height: 1,
                              indent: 12,
                              endIndent: 12,
                            );
                          }
                          final course = courses[index ~/ 2];
                          return ListTile(
                            onTap: () => CourseRoute(course.id).push(context),
                            title: Text(course.getName(context)),
                          );
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
