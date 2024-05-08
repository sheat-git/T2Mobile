import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:t2mobile/providers/notifications.dart';

class NotificationsPage extends ConsumerWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(title: const Text('Notifications')),
        body: ref.watch(notificationsProvider).when(
              data: (data) => ListView(
                children: data
                    .map((notification) =>
                        ListTile(title: Text(notification.subject)))
                    .toList(),
              ),
              error: (error, stackTrace) => SingleChildScrollView(
                child: SelectionArea(
                  child: Column(children: [
                    Text('Error: $error'),
                    Text(stackTrace.toString()),
                  ]),
                ),
              ),
              loading: () => const Center(child: Text('Loading')),
            ),
      );
}
