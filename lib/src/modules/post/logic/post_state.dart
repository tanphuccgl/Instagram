part of 'post_bloc.dart';

class PostState extends Equatable {
  final int type;
  final String? description;
  final List<PlatformFile> files;
  final List<XPostData> listPosts;
  final List<XPostData> listReels;
  final List<XPostData> listStorys;

  const PostState({
    required this.type,
    this.description,
    required this.files,
    required this.listPosts,
    required this.listReels,
    required this.listStorys,
  });
  @override
  List<Object?> get props => [
        description,
        type,
        files,
        listPosts,
        listReels,
        listStorys,
      ];

  PostState copyWith({
    int? type,
    String? description,
    List<PlatformFile>? files,
    List<XPostData>? listPosts,
    List<XPostData>? listReels,
    List<XPostData>? listStorys,
  }) {
    return PostState(
      type: type ?? this.type,
      description: description ?? this.description,
      files: files ?? this.files,
      listPosts: listPosts ?? this.listPosts,
      listReels: listReels ?? this.listReels,
      listStorys: listStorys ?? this.listStorys,
    );
  }
}
