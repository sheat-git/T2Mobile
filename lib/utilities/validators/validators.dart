import 'package:reactive_forms/reactive_forms.dart';
import 'package:t2mobile/utilities/validators/length_validator.dart';

abstract class T2Validators extends Validators {
  static LengthValidator length(int length) => LengthValidator(length);
}
