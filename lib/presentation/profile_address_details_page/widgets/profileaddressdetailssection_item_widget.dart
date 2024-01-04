import '../models/profileaddressdetailssection_item_model.dart';
import 'package:bonface_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileaddressdetailssectionItemWidget extends StatelessWidget {
  ProfileaddressdetailssectionItemWidget(
    this.profileaddressdetailssectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileaddressdetailssectionItemModel
      profileaddressdetailssectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.background.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                profileaddressdetailssectionItemModelObj.homeAddress!,
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgEdit21,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text(
                  profileaddressdetailssectionItemModelObj.edit!,
                  style: CustomTextStyles.titleSmallPrimary_1,
                ),
              ),
            ],
          ),
          SizedBox(height: 27.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  profileaddressdetailssectionItemModelObj.addressCounter!,
                  style: CustomTextStyles.bodyMediumGray600_1,
                ),
              ),
              Text(
                profileaddressdetailssectionItemModelObj.amoySt!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 19.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 1.v),
                child: Text(
                  profileaddressdetailssectionItemModelObj.addressCounter1!,
                  style: CustomTextStyles.bodyMediumGray600_1,
                ),
              ),
              Text(
                profileaddressdetailssectionItemModelObj.amoySt1!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                profileaddressdetailssectionItemModelObj.city!,
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              Text(
                profileaddressdetailssectionItemModelObj.losAngeles!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                profileaddressdetailssectionItemModelObj.postalCode!,
                style: CustomTextStyles.bodyMediumGray600_1,
              ),
              Text(
                profileaddressdetailssectionItemModelObj.zero!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
