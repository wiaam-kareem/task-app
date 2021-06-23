class Validators {
  Validators._();
  static String? validateLoginFeild(String? value) {
    if (value == null || value.isEmpty) {
      return "this field shouldn'n be empty";
    } else {
      return null;
    }
  }
}
