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

  static const String postAvatar = "$baseUrl/Profile/UploadAvatar";

  static const String removeAvatar = "$baseUrl/Profile/RemoveAvatar";

  static String getSearchUserName(String username) =>
      "$baseUrl/Profile/SearchUserName?username=$username";

  static String getProfileAnyUser(String idUser) =>
      "$baseUrl/Profile/GetProfileAnyUser/$idUser";

  /// API Follow

  static const String getFollowers = "$baseUrl/Follow/TotalPeopleFollowedYou";

  static const String getFollowing = "$baseUrl/Follow/TotalPeopleYouFollowed";

  static String postFollow(String idUser) => "$baseUrl/Follow/$idUser";

  static String removeFollow(String idUser) => "$baseUrl/Follow/$idUser";

  static String getFollowersUser(String idAccount) =>
      "$baseUrl/Follow/TotalPeopleFollowedAccount/$idAccount";

  static String getFollowingUser(String idAccount) =>
      "$baseUrl/Follow/TotalPeopleAccountFollowed/$idAccount";

  /// API Post

  static String postPost = "$baseUrl/Post";

  static String getPost(int type, String idAccount) =>
      "$baseUrl/Post/?idAccount=$idAccount&type=$type";

  static String removePost(String id) => "$baseUrl/$id";

  static String postReactionPost = "$baseUrl/Post/ReactionPost";

  static String removeReactionPost = "$baseUrl/Post/UnChangeReactionPost";

  static String postHandleCountReaction(String id) =>
      "$baseUrl/Post/HandleCountReaction/$id";

  static String postHandleTurnOffComment(String id) =>
      "$baseUrl/Post/HandleTurnOffComment/$id";

  static String getPostHome(int type) => "$baseUrl/Post/?type=$type";

  /// API Comment

  static String postComment = "$baseUrl/Comment";

  static String getComment(String idPost) =>
      "$baseUrl/Post/GetComment/{idPost}?idPost=$idPost";

  static String postReactionComment = "$baseUrl/Comment/ReactionComment";

  static String removeReactionComment(String idComment) =>
      "$baseUrl/Comment/UnReactionComment/$idComment";
}
