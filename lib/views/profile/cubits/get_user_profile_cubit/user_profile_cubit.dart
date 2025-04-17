import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';
import 'package:octopii_provier_app/models/profile/user_profile_response_model.dart';

part 'user_profile_state.dart';

class UserProfileCubit extends Cubit<UserProfileState> {
  UserProfileCubit() : super(const UserProfileState(status: GenericStateStatus.initial));

  Future<void> getUserProfileData() async {
    emit(
      state.copyWith(
        status: GenericStateStatus.loading,
      ),
    );
    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.getFromServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.profile),
    );
    AppLogger().info('The Response Result Is ${result.success}');
    AppLogger().info('The Response Result Is ${result.data}');
    AppLogger().info('The Response Result Is ${result.statusCode}');
    AppLogger().info('The Response Result Is ${result.responseState}');
    switch (result.responseState) {
      case ResponseState.success:
        final UserProfileData userProfileData = UserProfileData.fromJson(result.data!);

        emit(
          state.copyWith(
            status: GenericStateStatus.loaded,
            userProfileData: userProfileData,
          ),
        );

      case ResponseState.error:
        emit(
          state.copyWith(
            status: GenericStateStatus.error,
            errorMsg: result.msg,
          ),
        );
        AppLogger().error('Error From Server: ${result.msg}');
    }
  }

  void resetCubit() {
    emit(
      state.copyWith(
        status: GenericStateStatus.initial,
      ),
    );
  }
}
