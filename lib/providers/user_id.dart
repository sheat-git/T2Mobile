import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/services/shared_preferences.dart';

part 'user_id.g.dart';

@riverpod
class UserId extends _$UserId {
  @override
  Future<int> build() async {
    ref.listenSelf((_, next) async {
      final value = next.valueOrNull;
      if (value != null) {
        await ref.read(sharedPreferencesProvider).setMoodleUserId(value);
      }
    });

    final sharedPreferences = ref.read(sharedPreferencesProvider);
    final userId = await sharedPreferences.getMoodleUserId();
    if (userId != null) return userId;

    // TODO: core_webservice_get_site_infoを使用して取得
    return 19192;
  }

  void set(int value) => state = AsyncData(value);
}
