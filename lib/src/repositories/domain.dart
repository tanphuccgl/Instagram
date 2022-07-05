import 'package:instagram/src/repositories/account/login_repo.dart';
import 'package:instagram/src/repositories/account/login_repo_impl.dart';
import 'package:instagram/src/repositories/follow/follow_repo.dart';
import 'package:instagram/src/repositories/follow/follow_repo_impl.dart';
import 'package:instagram/src/repositories/profile/profile_repo.dart';
import 'package:instagram/src/repositories/profile/profile_repo_impl.dart';

class Domain {
  static Domain? _internal;
  Domain._() {
    account = AccountRepositoryImpl();
    profile = ProfileRepositoryImpl();
    follow = FollowRepositoryImpl();
  }
  factory Domain() {
    _internal ??= Domain._();
    return _internal!;
  }

  late final AccountRepository account;
  late final ProfileRepository profile;
  late final FollowRepository follow;
}
