part of 'edit_profile_bloc.dart';

class EditProfileState extends Equatable {
  final String name;
  final String phone;
  final String website;
  final String bio;
  final bool isCheck;
  final String username;

  const EditProfileState(
      {required this.name,
      required this.phone,
      required this.website,
      required this.username,
      this.isCheck = false,
      required this.bio});

  @override
  List<Object?> get props => [
        name,
        phone,
        website,
        bio,
        isCheck,
        username,
      ];

  EditProfileState copyWith({
    String? name,
    String? phone,
    String? website,
    String? bio,
    bool? isCheck,
    String? username,
  }) {
    return EditProfileState(
        name: name ?? this.name,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        bio: bio ?? this.bio,
        isCheck: isCheck ?? this.isCheck,
        username: username ?? this.username);
  }
}
