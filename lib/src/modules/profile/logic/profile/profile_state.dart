part of 'profile_bloc.dart';

class ProfileState extends Equatable {
  final XInformationData data;

  const ProfileState({required this.data});
  @override
  List<Object?> get props => [
        data,
      ];

  ProfileState copyWith({
    XInformationData? data,
  }) {
    return ProfileState(
      data: data ?? this.data,
    );
  }
}
