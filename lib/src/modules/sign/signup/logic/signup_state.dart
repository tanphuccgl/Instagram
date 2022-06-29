part of "signup_bloc.dart";

class SignUpState extends Equatable {
  final String name;
  final String email;
  final String password;
  final String username;
  final bool? pureEmail;
  final bool? pureUsername;
  final List<String> suggestUsername;

  const SignUpState(
      {this.name = "",
      this.pureUsername,
      this.pureEmail,
      this.email = "",
      this.suggestUsername = const [],
      this.password = "",
      this.username = ""});

  @override
  List<Object?> get props => [
        name,
        email,
        password,
        username,
        pureUsername,
        pureEmail,
        suggestUsername,
      ];

  SignUpState copyWith({
    String? name,
    String? email,
    String? password,
    String? username,
    bool? pureEmail,
    bool? pureUsername,
    List<String>? suggestUsername,
  }) {
    return SignUpState(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      username: username ?? this.username,
      pureEmail: pureEmail ?? this.pureEmail,
      pureUsername: pureUsername ?? this.pureUsername,
      suggestUsername: suggestUsername ?? this.suggestUsername,
    );
  }
}
