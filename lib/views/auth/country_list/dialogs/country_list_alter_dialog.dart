import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:octopii_provier_app/core/common_widgets/animations/app_animated_shimmer_widget.dart';
import 'package:octopii_provier_app/core/common_widgets/cached_network_svg_image_provider_widget.dart';
import 'package:octopii_provier_app/core/common_widgets/custom_text_form_field.dart';
import 'package:octopii_provier_app/core/const/const_strings.dart';
import 'package:octopii_provier_app/core/const/dimensions.dart';
import 'package:octopii_provier_app/core/extensions/navigation.dart';
import 'package:octopii_provier_app/core/theme/app_colors.dart';
import 'package:octopii_provier_app/core/theme/app_system_ui_overlay_styles.dart';
import 'package:octopii_provier_app/gen/locale_keys.g.dart';
import 'package:octopii_provier_app/models/country_list/country_list_response_model.dart';
import 'package:octopii_provier_app/views/auth/country_list/cubits/get_country_list_cubit/get_country_list_cubit.dart';

class CountryListAlterDialog extends HookWidget {
  const CountryListAlterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = useTextEditingController();
    final ValueNotifier<String> searchQuery = useState('');
    void selectPickedCountryAndPop({CountryData? countryData}) {
      context.read<GetCountryListCubit>().setSelectedCountry(
            countryData: countryData,
          );
      context.pop<dynamic>();
    }

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: AppSystemUiOverlayStyles.darkStatusBarIconsStyle.copyWith(
        statusBarColor: AppColors.primaryWhite,
        systemNavigationBarColor: AppColors.primaryWhite,
      ),
      child: AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        surfaceTintColor: Theme.of(context).colorScheme.secondaryContainer,
        content: SizedBox(
          height: 800.h,
          width: 750.w,
          child: BlocBuilder<GetCountryListCubit, GetCountryListState>(
            builder: (BuildContext context, GetCountryListState state) {
              final List<CountryData> countries =
                  state.responseModel?.response.data ?? <CountryData>[];

              // Filter countries based on search query
              final List<CountryData> filteredCountries = countries
                  .where(
                    (CountryData country) => country.title
                        .toLowerCase()
                        .contains(searchQuery.value.toLowerCase()),
                  )
                  .toList();

              if (state.isLoading) {
                return AppShimmerWidget(
                  width: 50.w,
                  height: 20.h,
                );
              }
              return Column(
                children: <Widget>[
                  CustomTextFormField(
                    textEditingController: searchController,
                    hintText: LocaleKeys.searchHintText.tr(),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25.w,
                      color: AppColors.neutral700Base,
                    ),
                    onChanged: (String? value) => searchQuery.value = value!,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) => Column(
                        children: <Widget>[
                          GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () => selectPickedCountryAndPop(
                              countryData: filteredCountries[index],
                            ),
                            child: Row(
                              children: <Widget>[
                                CachedNetworkSvgImageProviderWidget(
                                  imageUrl:
                                      filteredCountries[index].isoCode == 'EG'
                                          ? AppStrings.egyptFlagSvgImage
                                          : filteredCountries[index].flag,
                                  width: 36.w,
                                  height: 24.h,
                                  borderRadius:
                                      BorderRadiusDirectional.circular(
                                    4.r,
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  '+${filteredCountries[index].code}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineMedium
                                      ?.copyWith(
                                        fontWeight: AppDimensions.medium,
                                        fontSize: 13.sp,
                                      ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Expanded(
                                  child: Text(
                                    filteredCountries[index].title,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(
                                          fontWeight: AppDimensions.medium,
                                        ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      separatorBuilder: (BuildContext context, __) => Divider(
                        height: 12.h,
                        color: Theme.of(context).colorScheme.scrim,
                      ),
                      itemCount: filteredCountries.length,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
