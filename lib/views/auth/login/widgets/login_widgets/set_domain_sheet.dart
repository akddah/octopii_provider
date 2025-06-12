import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/common_widgets/custom_loading_button.dart';
import '../../../../../core/common_widgets/custom_text_form_field.dart';
import '../../../../../main.dart';

class SetDomainSheet extends StatefulWidget {
  const SetDomainSheet({super.key});

  @override
  State<SetDomainSheet> createState() => _SetDomainSheetState();
}

class _SetDomainSheetState extends State<SetDomainSheet> {
  final TextEditingController textController = TextEditingController(text: domain);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadiusDirectional.vertical(top: Radius.circular(32.r))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  'setYourDomain'.tr(),
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              SizedBox(width: 8.w),
            ],
          ),
          SizedBox(height: 32.h),
          Flexible(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  CustomTextFormField(
                    keyboardType: TextInputType.text,
                    textEditingController: textController,
                    hintText: 'domain'.tr(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    "*${'domainMessage'.tr()}",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.red),
                  ),
                  SizedBox(height: 32.h),
                  UnconstrainedBox(
                    child: CustomButton(
                      onTap: () {
                        if (textController.text.trim().isNotEmpty) {
                          SharedPreferences.getInstance().then((SharedPreferences v) {
                            v.setString('domain', textController.text.trim());
                            Navigator.pop(context);
                          });
                        }
                      },
                      text: 'save'.tr(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SafeArea(top: false, child: SizedBox.shrink()),
        ],
      ),
    );
  }
}
