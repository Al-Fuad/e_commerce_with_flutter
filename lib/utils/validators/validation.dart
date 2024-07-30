class EValidator{

  static String? validateEmptyText(String? fieldName,String? value){
    if(value == null || value.isEmpty) {
      return '$fieldName is required.';
    }
    return null;
  }
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty) {
      return 'Email is required.';
    }
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if(value == null || value.isEmpty) {
      return 'Password is required.';
    }
    if(value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    if(!value.contains(RegExp(r"[A-Z]"))){
      return 'Password must contain at least one uppercase letter.';
    }
    if(!value.contains(RegExp(r"[a-z]"))){
      return 'Password must contain at least one lowercase letter.';
    }
    if(!value.contains(RegExp(r"[0-9]"))){
      return 'Password must contain at least one number.';
    }
    return null;
  }
  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty) {
      return 'Phone number is required.';
    }
    if(RegExp(r"^\d{11}$").hasMatch(value)){
      return 'Invalid phone number format. 11 digits required.';
    }
    return null;
  }
}