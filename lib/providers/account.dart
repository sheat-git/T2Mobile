import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/base/loadable_notifier.dart';
import 'package:t2mobile/services/secure_storage.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class AccountData with _$AccountData {
  const factory AccountData({
    required String id,
    required String password,
    required MatrixData matrix,
  }) = _AccountData;
}

@freezed
class MatrixData with _$MatrixData {
  const MatrixData._();

  @Assert('data.length == 70')
  const factory MatrixData(
    String data,
  ) = _MatrixData;

  /// 実際の[A,1]などの文字、数値を引数にとる
  /// - [c]は`A-J`の文字
  /// - [i]は`1-7`の数値
  String get(String c, int i) {
    c = c.toUpperCase();
    i--;
    assert(c.length == 1 && RegExp(r'[A-J]').hasMatch(c));
    assert(i >= 0 && i < 7);
    return data[c.codeUnitAt(0) - 0x41 + i * 10];
  }

  /// [i]はインデックスであり、0-6から指定
  String getRow(int i) {
    assert(i >= 0 && i < 7);
    final start = i * 10;
    return data.substring(start, start + 10);
  }
}

@Riverpod(keepAlive: true)
class Account extends _$Account implements LoadableNotifier {
  @override
  AccountData? build() => null;

  @override
  Future<void> load() async {
    final secureStorage = ref.read(secureStorageProvider);
    final account = await secureStorage.getAccount();
    state = account;
  }

  Future<void> update(AccountData? data) async {
    state = data;
    await ref.read(secureStorageProvider).setAccount(data);
  }
}
