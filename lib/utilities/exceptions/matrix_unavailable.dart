import 'package:t2mobile/utilities/exceptions/exception.dart';
import 'package:t2mobile/views/hooks/app_localizations.dart';

class MatrixUnavailableException extends T2Exception {
  const MatrixUnavailableException();

  @override
  String? getMessage() => useAppLocalizations().matrixCode;
}
