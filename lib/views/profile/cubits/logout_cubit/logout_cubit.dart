import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:octopii_provier_app/core/config/app_constant_strings.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/helpers/enums.dart';
import 'package:octopii_provier_app/core/helpers/shared_pref_helper.dart';
import 'package:octopii_provier_app/core/infrastructure/networking/server_gate.dart';
import 'package:octopii_provier_app/core/navigation/app_router.dart';
import 'package:octopii_provier_app/core/navigation/route_names.dart';
import 'package:octopii_provier_app/core/utils/generic_classes/generic.dart';
import 'package:octopii_provier_app/core/utils/utils/app_logger.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(const LogoutState(states: GenericStateStatus.initial));

  Future<void> userLogout() async {
    emit(
      state.copyWith(
        states: GenericStateStatus.loading,
      ),
    );
    final CustomResponse<Map<String, dynamic>> result = await ServerGate.i.sendToServer<Map<String, dynamic>>(
      url: dotenv.get(AppConstantStrings.logout),
    );
    AppLogger().info('The Response Result Is ${result.success}');
    AppLogger().info('The Response Result Is ${result.data}');
    AppLogger().info('The Response Result Is ${result.statusCode}');
    switch (result.responseState) {
      case ResponseState.success:
        await SharedPrefHelper().deleteUser();
        await SharedPrefHelper().clearAllSecuredData();
        await navigatorKey.currentContext!.pushNamedAndRemoveUntil(
          RouteNames.splash,
          predicate: (Route<dynamic> route) => false,
        );
        emit(
          state.copyWith(
            states: GenericStateStatus.loaded,
            successMessage: result.msg,
          ),
        );

      case ResponseState.error:
        emit(
          state.copyWith(
            states: GenericStateStatus.error,
            errorMsg: result.msg,
          ),
        );
        AppLogger().error('Error From Server: ${result.msg}');
    }
  }
}
