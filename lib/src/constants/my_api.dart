class ApiUrl {
  static const String baseUrl = 'https://bangit.pw';

  /// API Account
  static const String postLogin = "$baseUrl/Account/Login";
  static const String informationAccount =
      "$baseUrl/Account/InformationAccount";

  static String checkUsername(String username) =>
      "$baseUrl/Account/CheckAccount?username=$username";

  static String checkPhoneNumber(String phone) =>
      "$baseUrl/Account/CheckPhoneNumber?phoneNumber=$phone";

  static String checkEmail(String email) =>
      "$baseUrl/Account/CheckEmail?email=$email";

  static const String forgotPassword = "$baseUrl/Account/ForgotPasswordByEmail";

  static const String tokenForgotPasswordEmail =
      "$baseUrl/Account/ReturnTokenAfterForgotPassword";

  static const String createNewPassword =
      "$baseUrl/Account/ChangePasswordAfterConfirmationCode";

  static String checkAccountForgot = "$baseUrl/Account/CheckAccountForgot";

  static String register = "$baseUrl/Account/Register";

  ///API Profile
  static const String getInformation = "$baseUrl/Profile/Information";

  static const String putInformation = "$baseUrl/Profile/ChangeInformation";
}
