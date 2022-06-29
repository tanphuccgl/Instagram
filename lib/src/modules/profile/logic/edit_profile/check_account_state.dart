part of 'check_account_bloc.dart';

class CheckAccountState extends Equatable {
  final String username;
  final bool isLoading;
  final bool canUse;

  const CheckAccountState({
    required this.username,
    this.isLoading = false,
    this.canUse = false,
  });

  @override
  List<Object?> get props => [
        username,
        isLoading,
        canUse,
      ];

  CheckAccountState copyWith({
    String? username,
    bool? isLoading,
    bool? canUse,
  }) {
    return CheckAccountState(
      username: username ?? this.username,
      isLoading: isLoading ?? this.isLoading,
      canUse: canUse ?? this.canUse,
    );
  }
}
