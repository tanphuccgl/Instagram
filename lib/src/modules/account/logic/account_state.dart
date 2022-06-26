part of 'account_bloc.dart';

class AccountState extends Equatable {
  final String tokenUser;
  final bool isLoading;

  const AccountState({this.tokenUser = '', this.isLoading = true});

  @override
  List<Object?> get props => [
        tokenUser,
        isLoading,
      ];

  AccountState copyWith({
    String? tokenUser,
    bool? isLoading,
  }) {
    return AccountState(
      tokenUser: tokenUser ?? this.tokenUser,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
