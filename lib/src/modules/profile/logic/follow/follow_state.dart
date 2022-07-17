part of 'follow_bloc.dart';

class FollowState extends Equatable {
  final XFollow data;
  final XFollowUser dataFollowUser;
  final bool isFollow;
  const FollowState(
      {required this.data,
      required this.dataFollowUser,
      this.isFollow = false});

  @override
  List<Object?> get props => [
        data,
        dataFollowUser,
        isFollow,
      ];

  FollowState copyWith({
    XFollow? data,
    XFollowUser? dataFollowUser,
    bool? isFollow,
  }) {
    return FollowState(
      data: data ?? this.data,
      dataFollowUser: dataFollowUser ?? this.dataFollowUser,
      isFollow: isFollow ?? this.isFollow,
    );
  }
}
