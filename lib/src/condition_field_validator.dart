import 'package:flutter_field_validator/src/field_validator_core.dart';

/// Validates the field based on a specified condition.
class ConditionFieldValidator extends FieldValidatorCore {
  const ConditionFieldValidator(this.condition, {required super.errorMessage});

  /// Will validate based on this condition.
  final bool Function(String? field) condition;

  @override
  bool isValid(String? field) {
    if (field == null || field.isEmpty) return true;

    return condition.call(field);
  }
}
