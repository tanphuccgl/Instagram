part of 'follow_bloc.dart';

class FollowState extends Equatable {
  final XFollow data;

  const FollowState({required this.data});

  @override
  List<Object?> get props => [
        data,
      ];

  FollowState copyWith({
    XFollow? data,
  }) {
    return FollowState(
      data: data ?? this.data,
    );
  }
}
