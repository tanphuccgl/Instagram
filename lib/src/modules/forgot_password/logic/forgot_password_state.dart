part of 'forgot_password_bloc.dart';

class ForgotPasswordState extends Equatable {
  final String email;
  final String token;
  final String tokenWithApi;

  final String newPassword;

  const ForgotPasswordState({
    this.email = "",
    this.token = "",
    this.tokenWithApi = "",
    this.newPassword = "",
  });
  @override
  List<Object?> get props => [
        email,
        token,
        newPassword,
        tokenWithApi,
      ];

  ForgotPasswordState copyWith({
    String? email,
    String? token,
    String? newPassword,
    String? tokenWithApi,
  }) {
    return ForgotPasswordState(
      email: email ?? this.email,
      token: token ?? this.token,
      newPassword: newPassword ?? this.newPassword,
      tokenWithApi: tokenWithApi ?? this.tokenWithApi,
    );
  }
}
