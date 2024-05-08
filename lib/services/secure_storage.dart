import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:t2mobile/providers/account.dart';

part 'secure_storage.g.dart';

@riverpod
SecureStorageService secureStorage(SecureStorageRef _) =>
    const SecureStorageService(FlutterSecureStorage());

abstract class SecureStorageKeys {
  static const accountId = 'ACCOUNT_ID';
  static const accountPassword = 'ACCOUNT_PASSWORD';
  static const accountMatrix = 'ACCOUNT_MATRIX';
  static const portalCookie = 'PORTAL_COOKIE';
  static const moodleCookie = 'MOODLE_COOKIE';
  static const moodleToken = 'MOODLE_TOKEN';
}

class SecureStorageService {
  final FlutterSecureStorage _storage;

  const SecureStorageService(this._storage);

  Future<String?> get(String key) => _storage.read(key: key);

  Future<void> set(String key, String? value) =>
      _storage.write(key: key, value: value);

  Future<String?> getAccountId() => get(SecureStorageKeys.accountId);

  Future<String?> getAccountPassword() =>
      get(SecureStorageKeys.accountPassword);

  Future<MatrixData?> getAccountMatrix() async {
    final value = await _storage.read(key: SecureStorageKeys.accountMatrix);
    if (value == null) return null;
    return MatrixData(value);
  }

  Future<AccountData?> getAccount() async {
    final (id, password, matrix) = await (
      getAccountId(),
      getAccountPassword(),
      getAccountMatrix(),
    ).wait;
    if (id == null || password == null || matrix == null) return null;
    return AccountData(id: id, password: password, matrix: matrix);
  }

  Future<void> setAccountId(String? id) => set(SecureStorageKeys.accountId, id);

  Future<void> setAccountPassword(String? password) =>
      set(SecureStorageKeys.accountPassword, password);

  Future<void> setAccountMatrix(MatrixData? matrix) =>
      _storage.write(key: SecureStorageKeys.accountMatrix, value: matrix?.data);

  Future<void> setAccount(AccountData? account) => (
        setAccountId(account?.id),
        setAccountPassword(account?.password),
        setAccountMatrix(account?.matrix),
      ).wait;

  Future<String?> getPortalCookie() => get(SecureStorageKeys.portalCookie);

  Future<void> setPortalCookie(String? cookie) =>
      set(SecureStorageKeys.portalCookie, cookie);

  Future<String?> getMoodleCookie() => get(SecureStorageKeys.moodleCookie);

  Future<void> setMoodleCookie(String? cookie) =>
      set(SecureStorageKeys.moodleCookie, cookie);

  Future<String?> getMoodleToken() => get(SecureStorageKeys.moodleToken);

  Future<void> setMoodleToken(String? token) =>
      set(SecureStorageKeys.moodleToken, token);
}
