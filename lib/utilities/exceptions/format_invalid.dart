import 'package:t2mobile/utilities/exceptions/exception.dart';
import 'package:t2mobile/views/hooks/app_localizations.dart';

class FormatInvalidException extends T2Exception {
  const FormatInvalidException();

  @override
  String? getMessage() => useAppLocalizations().theFormatIsInvalid;
}
