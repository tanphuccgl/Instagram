part of 'check_account_bloc.dart';

class CheckAccountState extends Equatable {
  final String username;
  final bool isLoading;
  final bool isCheck;

  const CheckAccountState({
    required this.username,
    this.isLoading = false,
    this.isCheck = false,
  });

  @override
  List<Object?> get props => [
        username,
        isLoading,
        isCheck,
      ];

  CheckAccountState copyWith({
    String? username,
    bool? isLoading,
    bool? isCheck,
  }) {
    return CheckAccountState(
      username: username ?? this.username,
      isLoading: isLoading ?? this.isLoading,
      isCheck: isCheck ?? this.isCheck,
    );
  }
}
