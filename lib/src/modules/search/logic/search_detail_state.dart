part of 'search_detail_bloc.dart';

class SearchDetailState extends Equatable {
  final List<XSearchUserNameData> data;
  final String username;

  const SearchDetailState({this.data = const [], this.username = ""});

  @override
  List<Object?> get props => [
        data,
        username,
      ];

  SearchDetailState copyWith({
    List<XSearchUserNameData>? data,
    String? username,
  }) {
    return SearchDetailState(
      data: data ?? this.data,
      username: username ?? this.username,
    );
  }
}
