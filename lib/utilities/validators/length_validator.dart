import 'package:reactive_forms/reactive_forms.dart';
import 'package:t2mobile/utilities/validators/validation_message.dart';

class LengthValidator extends Validator<dynamic> {
  final int length;

  const LengthValidator(this.length) : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    if (control.value == null) {
      return null;
    }

    List<dynamic>? collection;

    if (control is FormArray<dynamic>) {
      collection = control.value;
    } else if (control is FormGroup) {
      collection = control.value.keys.toList();
    } else if (control is FormControl<Iterable<dynamic>>) {
      collection = control.value?.toList();
    } else if (control is FormControl<String> || control.value is String) {
      collection = control.value.toString().runes.toList();
    }

    return (collection != null && collection.length == length)
        ? null
        : <String, dynamic>{
            T2ValidationMessage.length: {
              'requiredLength': length,
              'actualLength': collection != null ? collection.length : 0,
            }
          };
  }
}
