import 'package:get_it/get_it.dart';
import 'package:octopii_provier_app/views/booking/cubits/booking_list_cubit/booking_list_cubit.dart';
import 'package:octopii_provier_app/views/manage_working_days/cubits/manage_working_days_cubit.dart';
import 'package:octopii_provier_app/views/profile/cubits/get_user_profile_cubit/user_profile_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../views/dashboard/cubits/upcoming_appointments_booking_cubit/upcoming_appointments_booking_cubit.dart';

final GetIt sl = GetIt.instance;

class ServicesLocator {
  Future<void> init() async {
    sl.allowReassignment = true;

    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sl.registerSingleton<SharedPreferences>(sharedPreferences);
    sl.registerFactory(() => ManageWorkingDaysCubit());
    sl.registerFactory(() => UpcomingAppointmentsBookingCubit());
    sl.registerLazySingleton(() => UserProfileCubit());
    sl.registerFactory(() => BookingListCubit());
  }
}
