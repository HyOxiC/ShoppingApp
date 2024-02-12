// ignore_for_file: valid_regexps

class TestValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // reguylar expression for email verification
    final emailRegExp = RegExp (r'^[\\w-\.]+@([\w-]+\\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email adress.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    //check for minimum password length
    if (value.length < 6) {
      return ' Password length must be atleast 6 characters';
    }
    
        //check for uppercase
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return ' Password must contain atleast one uppercase letter';
    }

        //check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return ' Password length must contain atleast one number';
    }

        //check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*()_-+=,./;";{}|<>\]'))) {
      return ' Password length must be atleast 6 characters';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digits required).';
    }
    return null;
  }
}