import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/cached_network_svg_image_provider_widget.dart';
import 'package:octopii_provier_app/core/const/const_strings.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/views/auth/country_list/cubits/get_country_list_cubit/get_country_list_cubit.dart';

class CountryView extends StatelessWidget {
  const CountryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCountryListCubit, GetCountryListState>(
      builder: (BuildContext context, GetCountryListState state) {
        // if (state.isLoading) {
        //   return AppShimmerWidget(
        //     width: 40.w,
        //     height: 20.h,
        //   ).paddingHorizontal(12.w);
        // }
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          // onTap: () => showDialog<void>(
          //   context: navigatorKey.currentContext!,
          //   builder: (_) => BlocProvider<GetCountryListCubit>.value(
          //     value: BlocProvider.of<GetCountryListCubit>(context),
          //     child: const CountryListAlterDialog(),
          //   ),
          // ),
          child: SizedBox(
            width: 70.w,
            child: Row(
              children: <Widget>[
                CachedNetworkSvgImageProviderWidget(
                  imageUrl: state.countryData!.isoCode == 'EG' ? AppStrings.egyptFlagSvgImage : state.countryData!.flag,
                  width: 36.w,
                  height: 24.h,
                  borderRadius: BorderRadiusDirectional.circular(
                    4.r,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.neutral900Base,
                  size: 20.w,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
