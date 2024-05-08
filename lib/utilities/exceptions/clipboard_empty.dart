import 'package:t2mobile/utilities/exceptions/exception.dart';
import 'package:t2mobile/views/hooks/app_localizations.dart';

class ClipboardEmptyException extends T2Exception {
  const ClipboardEmptyException();

  @override
  String? getMessage() => useAppLocalizations().clipboardIsEmpty;
}
