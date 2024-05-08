import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:t2mobile/providers/features/courses/timetable.dart';
import 'package:t2mobile/providers/features/courses/timetable_options.dart';
import 'package:t2mobile/router/routes/courses/course.dart';
import 'package:t2mobile/router/routes/courses/courses.dart';
import 'package:t2mobile/router/shell/route.dart';
import 'package:t2mobile/services/cache_database/cache_database.dart';
import 'package:t2mobile/services/cache_database/models/timetable_data.dart';
import 'package:t2mobile/views/components/cacheable_scafflod.dart';

class TimetablePage extends StatelessWidget {
  const TimetablePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isJa = Localizations.localeOf(context).languageCode == 'ja';
    final provider = timetableProvider(isJa ? 'ja' : 'en');
    return CacheableScaffold(
      provider: provider,
      notifier: provider.notifier,
      updatedAtSelector: (data) => data.updatedAt,
      appBarBuilder: (context, data) => SliverAppBar.medium(
        title: Row(
          children: [
            Expanded(child: Text(AppLocalizations.of(context)!.timetable)),
            if (data != null)
              Consumer(builder: (context, ref, _) {
                final years = ref
                    .watch(timetableOptionsProvider(data.lang).select((value) =>
                        value.valueOrNull?.years ??
                        [
                          TimetableYear(
                            lang: data.lang,
                            value: data.year,
                            label: data.yearLabel,
                          )
                        ]))
                    .sortedByCompare(
                        (year) => year.label, (l1, l2) => l2.compareTo(l1));
                final quarters = ref
                    .watch(timetableOptionsProvider(data.lang).select((value) =>
                        value.valueOrNull?.quarters ??
                        [
                          TimetableQuarter(
                            lang: data.lang,
                            value: data.quarter,
                            label: data.quarterLabel,
                          )
                        ]))
                    .sortedBy((quarter) => quarter.label);
                return MenuAnchor(
                  menuChildren: years
                      .map((year) => SubmenuButton(
                            menuChildren: quarters
                                .map((q) => MenuItemButton(
                                      onPressed: () => ref
                                          .read(timetableProvider(data.lang)
                                              .notifier)
                                          .updateTerm(year.value, q.value),
                                      child: Text(q.label),
                                    ))
                                .toList(),
                            child: Text(year.label),
                          ))
                      .toList(),
                  builder: (context, controller, _) => TextButton(
                    onPressed: () => controller.isOpen
                        ? controller.close()
                        : controller.open(),
                    style: TextButton.styleFrom(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -4),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${data.yearLabel} / ${data.quarterLabel}'),
                        const Icon(Symbols.arrow_drop_down),
                      ],
                    ),
                  ),
                );
              }),
          ],
        ),
        actions: [
          Consumer(
            builder: (context, ref, _) => IconButton(
              onPressed: () => ref.read(provider.notifier).refresh(),
              icon: const Icon(Symbols.refresh),
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Symbols.list),
            onPressed: () {
              const route = CoursesRoute(isTimetable: false);
              if (GoRouter.of(context).canPop()) {
                route.pushReplacement(context);
              } else {
                route.go(context);
              }
            },
          ),
        ],
      ),
      builder: (context, data) {
        final columns = data.data.columns.last.any((c) => c is TimetableCourse)
            ? data.data.columns
            : data.data.columns.sublist(0, data.data.columns.length - 1);
        final length = columns
            .map((c) => c.reversed
                .skipWhile((c) => c == null || c is TimetableHeader)
                .length)
            .fold(5, max);
        final isHeadlineRow = List.generate(
          length,
          (i) => columns
              .map((column) => column.length > i ? column[i] : null)
              .every((content) => content is TimetableHeader),
        );

        return Row(
          children: [
            const SizedBox(width: 12),
            ...columns.map((column) {
              final contents = <({int? flex, TimetableContent? data})>[];
              for (var i = 0; i < length; i++) {
                final content = column.length > i ? column[i] : null;
                if (content is TimetableHeader || contents.isEmpty) {
                  contents
                      .add((flex: isHeadlineRow[i] ? null : 1, data: content));
                } else if (content == contents.last.data) {
                  contents.last =
                      (flex: contents.last.flex! + 1, data: content);
                } else {
                  contents.add((flex: 1, data: content));
                }
              }
              final child = Column(
                children: contents.map((content) {
                  final Widget child;
                  const padding = EdgeInsets.all(2);
                  const borderRadius = BorderRadius.all(Radius.circular(8));
                  switch (content.data) {
                    case TimetableHeader(text: final text):
                      child = Center(
                        child: Text(
                          text,
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      );
                    case TimetableCourse(name: final name, id: final id):
                      child = Padding(
                        padding: padding,
                        child: Material(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: borderRadius,
                          child: InkWell(
                            onTap: () => CourseRoute(id).push(context),
                            borderRadius: borderRadius,
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Text(
                                name,
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      );
                    case null:
                      child = Container(
                        margin: padding,
                        decoration: BoxDecoration(
                          borderRadius: borderRadius,
                          color: Theme.of(context).colorScheme.surfaceVariant,
                        ),
                      );
                  }
                  if (content.flex != null) {
                    return Expanded(flex: content.flex!, child: child);
                  } else {
                    return child;
                  }
                }).toList(),
              );
              if (column
                  .take(length)
                  .every((content) => content is TimetableHeader)) {
                return child;
              } else {
                return Expanded(child: child);
              }
            }),
            const SizedBox(width: 12),
          ],
        );
      },
    );
  }
}
