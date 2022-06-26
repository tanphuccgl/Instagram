import 'package:instagram/src/repositories/account/login_repo.dart';
import 'package:instagram/src/repositories/account/login_repo_impl.dart';

class Domain {
  static Domain? _internal;
  Domain._() {
    account = AccountRepositoryImpl();
  }
  factory Domain() {
    _internal ??= Domain._();
    return _internal!;
  }

  late final AccountRepository account;
}
