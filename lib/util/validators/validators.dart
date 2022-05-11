typedef FdFieldValidator = String? Function(String? value);

class Validators {
  static FdFieldValidator heightFieldValidator(String errMsg) => (String? value) {
        if (value?.isEmpty ?? true) return null;
        final int? height = int.tryParse(value!);
        const int minInCm = 120, maxInCm = 270;
        if (height == null || height < minInCm || height > maxInCm) return errMsg;
      };

  static FdFieldValidator textNotEmptyValidator(String errMsg) => (String? value) => (value?.isEmpty ?? false) ? errMsg : null;

  static FdFieldValidator emailFieldValidator(String errMsg) {
    return (String? value) {
      if (value == null) return null;
      const String pattern =
          r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      final RegExp regex = RegExp(pattern);
      return !regex.hasMatch(value.trim()) ? errMsg : null;
    };
  }

  static Function(String) mustMatchFieldValidatorCreator(String match) =>
      (String errMsg) => (String? value) => value == match ? null : errMsg;
}
