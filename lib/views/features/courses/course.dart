import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:t2mobile/providers/features/courses/course.dart';
import 'package:t2mobile/providers/features/courses/course_contents.dart';
import 'package:t2mobile/providers/web_view_state.dart';
import 'package:t2mobile/services/cache_database/models/format.dart';
import 'package:t2mobile/services/cache_database/tables/course_content_modules.dart';
import 'package:t2mobile/utilities/extensions/course_get_name.dart';
import 'package:t2mobile/views/components/cacheable_scafflod.dart';
import 'package:t2mobile/views/components/list_item.dart';

class CoursePage extends ConsumerWidget {
  final int id;

  const CoursePage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appBar = SliverAppBar.medium(
      title: Consumer(
        builder: (context, ref, _) => FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(ref
                  .watch(courseProvider(id))
                  .valueOrNull
                  ?.data
                  .getName(context) ??
              ''),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () => ref
              .read(webViewStateProvider.notifier)
              .go('https://t2schola.titech.ac.jp/course/view.php?id=$id'),
          icon: const Icon(Symbols.language),
        ),
      ],
    );

    final provider = courseSectionsProvider(id);

    return CacheableScaffold(
      provider: provider,
      notifier: provider.notifier,
      updatedAtSelector: (data) => data.updatedAt,
      appBarBuilder: (context, data) => data == null ? appBar : null,
      builder: (context, data) => NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [appBar],
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: RefreshIndicator(
            onRefresh: () => ref.read(provider.notifier).refresh(),
            child: ListView.separated(
              itemCount: data.sections.length,
              separatorBuilder: (context, index) => const SizedBox(height: 24),
              itemBuilder: (context, index) {
                final section = data.sections[index];
                final summary = section.content.summary;
                final summaryFormat = section.content.summaryFormat;
                final showSummary = summary.isNotEmpty;
                final supportTextStyle = Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListItem(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            section.content.name,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          if (showSummary) ...[
                            const SizedBox(height: 8),
                            DefaultTextStyle(
                              style: supportTextStyle,
                              child: SelectionArea(
                                child: switch (summaryFormat) {
                                  Format.plain ||
                                  Format.moodle ||
                                  null =>
                                    Text(summary),
                                  Format.html => HtmlWidget(summary),
                                  Format.markdown => MarkdownBody(
                                      data: summary,
                                      selectable: true,
                                    ),
                                },
                              ),
                            ),
                            const SizedBox(height: 8),
                          ],
                        ],
                      ),
                    ),
                    ...section.modules.expandIndexed((i, module) {
                      final description = module.description;
                      return [
                        if (i > 0 || showSummary)
                          const Divider(
                            height: 1,
                            indent: 12,
                            endIndent: 12,
                          ),
                        switch (module.type) {
                          CourseContentModuleType.label =>
                            const SizedBox(height: 8),
                          _ => ListTile(
                              onTap: () {
                                switch (module.type) {
                                  case CourseContentModuleType.studySurvey:
                                    ref.read(webViewStateProvider.notifier).go(
                                        'https://t2schola.titech.ac.jp/mod/ltifmane/launch.php?id=${module.id}');
                                  case CourseContentModuleType.url:
                                    final url =
                                        module.contents.firstOrNull?.url;
                                    if (url != null) {
                                      ref
                                          .read(webViewStateProvider.notifier)
                                          .go(url);
                                    }
                                  default:
                                    final url = module.url;
                                    if (url != null) {
                                      ref
                                          .read(webViewStateProvider.notifier)
                                          .go(url);
                                    }
                                }
                              },
                              leading: Icon(
                                module.type?.getIcon() ??
                                    Symbols.unknown_document,
                              ),
                              title: Text(switch (module.type) {
                                CourseContentModuleType.studySurvey =>
                                  AppLocalizations.of(context)!
                                      .courseSurveyOfStudyEffectiveness,
                                _ => module.name,
                              }),
                            ),
                        },
                        if (description != null) ...[
                          ListItem(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              child: DefaultTextStyle(
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
                                    ),
                                child: SelectionArea(
                                  child: HtmlWidget(description),
                                ),
                              ),
                            ),
                          ),
                          if (i < section.modules.length - 1)
                            const SizedBox(height: 8),
                        ],
                      ];
                    })
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

extension CourseContentModuleGetIcon on CourseContentModuleType {
  IconData getIcon() => switch (this) {
        CourseContentModuleType.assignment => Symbols.assignment,
        CourseContentModuleType.chat => Symbols.chat,
        CourseContentModuleType.choice => Symbols.ballot,
        CourseContentModuleType.feedback => Symbols.feedback,
        CourseContentModuleType.folder => Symbols.folder,
        CourseContentModuleType.forum => Symbols.forum,
        CourseContentModuleType.label => Symbols.label,
        CourseContentModuleType.page => Symbols.notes,
        CourseContentModuleType.quiz => Symbols.quiz,
        CourseContentModuleType.resource => Symbols.draft,
        CourseContentModuleType.studySurvey => Symbols.mood,
        CourseContentModuleType.url => Symbols.link,
        CourseContentModuleType.video => Symbols.smart_display,
      };
}
