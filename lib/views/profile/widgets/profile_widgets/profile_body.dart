import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/di/di.dart';
import '../../cubits/get_user_profile_cubit/user_profile_cubit.dart';
import 'index.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({super.key});

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  // late Cubit<UserProfileState> _userProfileCubit;
  final cubit = sl<UserProfileCubit>();

  @override
  void initState() {
    if (cubit.state.userProfileData == null) {
      cubit.getUserProfileData();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: <Widget>[
        const UserProfileCardWidget(),
        SizedBox(
          height: 24.h,
        ),
        const ProfileOptionWidget(),
      ],
    );
  }
}
