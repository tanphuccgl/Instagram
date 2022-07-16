part of 'profile_user_bloc.dart';

class ProfileUserState extends Equatable {
  final XInformationAnyUserData data;
  final XInformationAnyUserData data1;

  const ProfileUserState({required this.data, required this.data1});

  @override
  List<Object?> get props => [
        data,
        data1,
      ];

  ProfileUserState copyWith({
    XInformationAnyUserData? data,
    XInformationAnyUserData? data1,
  }) {
    return ProfileUserState(
      data: data ?? this.data,
      data1: data1 ?? this.data1,
    );
  }
}
