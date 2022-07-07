part of 'profile_user_bloc.dart';

class ProfileUserState extends Equatable {
  final XInformationAnyUserData data;

  const ProfileUserState({required this.data});

  @override
  List<Object?> get props => [
        data,
      ];

  ProfileUserState copyWith({
    XInformationAnyUserData? data,
  }) {
    return ProfileUserState(
      data: data ?? this.data,
    );
  }
}
