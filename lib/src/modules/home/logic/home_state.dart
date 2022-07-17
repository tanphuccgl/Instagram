part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<XPostData> listPost;
  final List<XPostData> listStory;

  const HomeState({required this.listPost, required this.listStory});

  @override
  List<Object?> get props => [
        listPost,
        listStory,
      ];

  HomeState copyWith({
    List<XPostData>? listPost,
    List<XPostData>? listStory,
  }) {
    return HomeState(
      listPost: listPost ?? this.listPost,
      listStory: listStory ?? this.listStory,
    );
  }
}
