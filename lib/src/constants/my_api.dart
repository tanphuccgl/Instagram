class ApiUrl {
  static const String baseUrl = 'https://bangit.pw';

  /// API Account
  static const String postLogin = "$baseUrl/Account/Login";
  static const String informationAccount =
      "$baseUrl/Account/InformationAccount";
  static const String forgotPassword = "$baseUrl/Account/ForgotPasswordByEmail";
  static const String tokenForgotPasswordEmail =
      "$baseUrl/Account/ReturnTokenAfterForgotPassword";
  static const String createNewPassword =
      "$baseUrl/Account/ChangePasswordAfterConfirmationCode";

  static String checkAccountForgot = "$baseUrl/Account/CheckAccountForgot";
}
