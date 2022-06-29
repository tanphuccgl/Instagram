import 'package:instagram/src/core/api/profile/change_information.dart';
import 'package:instagram/src/core/api/profile/infomation_api.dart';
import 'package:instagram/src/models/base_data.dart';
import 'package:instagram/src/models/information_model.dart';
import 'package:instagram/src/models/result.dart';
import 'package:instagram/src/repositories/profile/profile_repo.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  @override
  Future<XResult<XInformationData>> getInformation() async {
    try {
      var data = await InformationRemoteDataSource().getInformation();
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }

  @override
  Future<XResult<BaseData>> putInformation({
    required String fullName,
    required String username,
    required String website,
    required String phoneNumber,
    required String bio,
  }) async {
    try {
      var data = await ChangeInformationRemoteDataSource().changeInformation(
        bio: bio,
        fullName: fullName,
        phoneNumber: phoneNumber,
        website: website,
        username: username,
      );
      return XResult.success(data);
    } catch (e) {
      return XResult.error(e.toString());
    }
  }
}
