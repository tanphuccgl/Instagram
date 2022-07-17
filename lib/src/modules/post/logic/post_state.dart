part of 'post_bloc.dart';

class PostState extends Equatable {
  final int type;
  final String? description;
  final List<PlatformFile> files;
  final XPost listPosts;
  final XPost listPosts1;

  final List<XPostData> listReels;
  final List<XPostData> listStorys;
  final List<XCommentData> listComments;
  final List<XPostData> listStorys1;
  final String cmt;
  final int totalPost;
  final bool isLove;

  const PostState({
    required this.type,
    this.description,
    required this.files,
    required this.listPosts,
    required this.listReels,
    required this.listStorys,
    required this.listPosts1,
    required this.listStorys1,
    required this.listComments,
    required this.cmt,
    this.totalPost = 0,
    this.isLove = false,
  });
  @override
  List<Object?> get props => [
        description,
        type,
        files,
        listPosts,
        listReels,
        listStorys,
        listComments,
        cmt,
        totalPost,
        listPosts1,
        listStorys1,
        isLove,
      ];

  PostState copyWith({
    int? type,
    String? description,
    List<PlatformFile>? files,
    XPost? listPosts,
    XPost? listPosts1,
    List<XPostData>? listReels,
    List<XPostData>? listStorys,
    List<XPostData>? listStorys1,
    List<XCommentData>? listComments,
    String? cmt,
    int? totalPost,
    bool? isLove,
  }) {
    return PostState(
      type: type ?? this.type,
      description: description ?? this.description,
      files: files ?? this.files,
      listPosts: listPosts ?? this.listPosts,
      listPosts1: listPosts1 ?? this.listPosts1,
      listReels: listReels ?? this.listReels,
      listStorys: listStorys ?? this.listStorys,
      listStorys1: listStorys1 ?? this.listStorys1,
      listComments: listComments ?? this.listComments,
      cmt: cmt ?? this.cmt,
      totalPost: totalPost ?? this.totalPost,
      isLove: isLove ?? this.isLove,
    );
  }
}
