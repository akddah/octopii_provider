import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/views/auth/login/cubits/login_cubit/login_cubit.dart';
import 'package:octopii_provier_app/views/auth/login/widgets/login_widgets/index.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: context.read<LoginCubit>().formKey,
      child: LoginListenerWidget(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 70.h,
            ),
            const LoginWelcomeWidget(),
            SizedBox(
              height: 60.h,
            ),
            const LoginTestFields(),
            SizedBox(
              height: 40.h,
            ),
            const LoginButton(),
          ],
        ),
      ),
    );
  }
}
