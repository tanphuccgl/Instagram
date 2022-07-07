part of 'follow_bloc.dart';

class FollowState extends Equatable {
  final XFollow data;
  final XFollowUser dataFollowUser;

  const FollowState({required this.data, required this.dataFollowUser});

  @override
  List<Object?> get props => [
        data,
        dataFollowUser,
      ];

  FollowState copyWith({
    XFollow? data,
    XFollowUser? dataFollowUser,
  }) {
    return FollowState(
      data: data ?? this.data,
      dataFollowUser: dataFollowUser ?? this.dataFollowUser,
    );
  }
}
